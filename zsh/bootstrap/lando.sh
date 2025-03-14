export LANDO_HOST_NAME_DEV=host.wsl.internal
export LANDO_HOST_GATEWAY_DEV=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}')
export XDEBUG_CONFIG='remote_enable=true remote_host=host.docker.internal'
