# Public: Install and configure brewcask for use with Boxen.
#
# Examples
#
#   include brewcask

class brewcask {
  require homebrew

  $cask_home = $::homebrew_root
  $cask_room = "${cask_home}/Caskroom"

  homebrew::tap { 'caskroom/cask': }

  boxen::env_script { 'brewcask':
    content  => template('brewcask/env.sh.erb'),
    priority => highest,
  }
}
