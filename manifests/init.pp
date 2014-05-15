# Install Atom into /Applications
#
# Usage:
#
#     include atom
class atom {
  package { 'Atom':
    provider => 'compressed_app',
    source   => 'http://atom.io/download/mac'
  }

  file { "${boxen::config::bindir}/apm":
    ensure  => link,
    target  => '/Applications/Atom.app/Contents/Resources/app/apm/node_modules/.bin/apm',
    mode    => '0755',
    require => Package['Atom']
  }

  file { "${boxen::config::bindir}/atom":
    ensure  => link,
    target  => '/Applications/Atom.app/Contents/Resources/app/atom.sh',
    mode    => '0755',
    require => Package['Atom']
  }
}
