node default {
  file {'/root/README':
    ensure  => file,
    content => "This is a sample README\n",
    owner   => 'root',
  }
}

package {'java':
  ensure => present,
}


file {'/etc/sysconfig/jenkins':
  ensure => file,
 # source => 'puppet:///jenkins.conf',
}
