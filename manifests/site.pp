node default {
  file {'/root/README':
    ensure  => file,
    content => "This is a sample README 123\n",
    owner   => 'root',
  }
}

package {'java':
  ensure => present,
}
