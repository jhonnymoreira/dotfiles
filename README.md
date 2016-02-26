# Dotfiles

From system with love. :computer::heart:

## Create your own

1. Clone the your dotfiles folder
`mkdir ~/dotfiles`

2. Move your dotfiles to dotfiles folder
`mv .zshrc .zsh_aliases ... path/to/your/dotfiles/folder`

3. Clone this gist to [setup your symlinks](https://gist.github.com/jhonnymoreira/6f34bd2d63220de82350) and go to folder
`git clone git@gist.github.com:6f34bd2d63220de82350.git symlink_dotfiles && cd $_`

4. Set up the variables inside the gist
```ruby
home = '/home/user/'
dotfiles_path = home + 'dotfiles/'
```

5. Run the script
`ruby symlink_dotfiles.rb`

Be happy [=

---

Made with love by @jhonnymoreira
