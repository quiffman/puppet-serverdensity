# == Class: serverdensity_agent::plugin::docker
#
# Defines Docker instances
#
# === Parameters
#
# [*docker_root*]
#   Change the root directory to look at to get cgroup statistics. Useful when
#   running inside a container with host directories mounted on a different
#   folder.
#   Default: /
#
# [*docker_socket_url*]
#   String. Url to the docker daemon socket to reach the Docker API. HTTP also
#   works.
#   Default: unix://var/run/docker.sock
#
# [*docker_socket_timeout*]
#   Timeout on Docker socket connection. You may have to increase it if you
#   have many containers.
#   Default: undef
#
# === Examples
#
# class { 'serverdensity_agent::plugin::docker':
#   docker_socket_url     => 'unix://var/run/docker.sock',
#   docker_socket_timeout => 5,
# }
#
class serverdensity_agent::plugin::docker (
  $docker_root = '/',
  $docker_socket_url = 'unix://var/run/docker.sock',
  $docker_socket_timeout = undef,
  ) {
  serverdensity_agent::plugin { 'docker':
    config_content => template('serverdensity_agent/plugin/docker.yaml.erb'),
  }
}
# vim: set ts=2 sw=2 tw=0 et:
