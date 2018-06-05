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

ini_setting { "Jenkins Port Setting":
  ensure  => present,
  path    => '/etc/sysconfig/jenkins',
  setting => 'JENKINS_PORT',
  value   => '8000',
}
