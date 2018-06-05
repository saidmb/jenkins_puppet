/************************

class jenkins_puppet {

  ######################### Dowload Jenkins Repo ############################
  exec{'download':
    command      =>  'wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo',
    path         =>  '/usr/bin:/usr/sbin:/bin:/usr/local/bin',
    cwd          =>  '/etc/yum.repos.d',
    user         =>  'root',
    creates      =>  '/etc/yum.repos.d/jenkins.repo',
    notify       =>  Exec['extract'],
  }

  ######################### Extract Jenkins Repo locally ############################
  exec{'extract':
    command      =>  'rpm --import http://pkg.jenkins-ci.org/redhat-stable/jenkins-ci.org.key',
    path         =>  '/usr/bin:/usr/sbin:/bin:/usr/local/bin',
    cwd          =>  '/etc/yum.repos.d',
    user         =>  'root',
    refreshonly  =>  true,
  }

  package{'jenkins':
    ensure       =>  installed,
  }
  
  ############################################
  
}

************************/
