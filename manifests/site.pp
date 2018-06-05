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

ini_setting { "sample setting":
  ensure  => present,
  path    => '/etc/sysconfig/jenkins',
  setting => 'JENKINS_PORT',
  value   => '8888',
}
