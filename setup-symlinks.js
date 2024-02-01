import fs from 'node:fs';
import path, { dirname } from 'node:path';
import { fileURLToPath } from 'node:url';
import process from 'node:process';
import { glob } from 'glob';
import task from 'tasuku';

const __dirname = dirname(fileURLToPath(import.meta.url));

const HANDLED_INDIVIDUALLY = ['starship.toml'];

const ignore = [
  'node_modules/**',
  'scripts/**',
  'zsh/**',
  'LICENSE',
  'package.json',
  'pnpm-lock.yaml',
  'prettier.config.js',
  'setup-symlinks.js',
  'README.md',
  ...HANDLED_INDIVIDUALLY,
];

const createSymlink = (entry, target, type) => {
  if (fs.existsSync(target)) {
    fs.unlinkSync(target);
  }

  fs.symlinkSync(entry, target, type);
};

const { result: dotfiles } = await task(
  'Grouping dotfiles',
  async ({ setStatus }) => {
    const dotfiles = {
      home: {
        entries: await glob('*', {
          ignore,
          absolute: true,
          nodir: true,
        }),
        target: path.resolve(process.env.HOME, '.'),
      },
      binaries: {
        entries: await glob('bin/*', {
          ignore,
          absolute: true,
          nodir: true,
        }),
        target: path.resolve('/usr/local/bin'),
      },
      aws: {
        entry: path.resolve(__dirname, 'aws/'),
        target: path.resolve(process.env.HOME, '.aws/'),
      },
      starship: {
        entry: path.resolve(__dirname, 'starship.toml'),
        target: path.resolve(process.env.HOME, '.config/'),
      },
    };

    setStatus('Done');
    return dotfiles;
  },
);

await task('Creating symlinks', async ({ setStatus, task }) => {
  await task.group((task) => [
    task('$HOME', () => {
      const { entries, target } = dotfiles.home;
      entries.forEach((entry) => {
        const symlinkTarget = path.resolve(
          target,
          `.${path.basename(entry)}`,
        );

        createSymlink(entry, symlinkTarget, 'file');
      });
    }),
    task('Binaries', () => {
      const { entries, target } = dotfiles.binaries;
      entries.forEach((entry) => {
        const symlinkTarget = path.resolve(
          target,
          path.basename(entry),
        );

        createSymlink(entry, symlinkTarget, 'file');
      });
    }),
    task('AWS', () => {
      const { entry, target } = dotfiles.aws;

      createSymlink(entry, target, 'dir');
    }),
    task('Starship', () => {
      const { entry, target } = dotfiles.starship;
      const symlinkTarget = path.resolve(target, path.basename(entry));

      createSymlink(entry, symlinkTarget, 'file');
    }),
  ]);

  setStatus('Done');
});
