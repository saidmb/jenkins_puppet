class jenkins {

  file {'/etc/sysconfig/jenkins':
    ensure => file,
    source => 'puppet:///module/jenkins/jenkins.conf',
  }

}
