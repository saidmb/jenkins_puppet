/*************************************************************************
# jenkins_puppet

This is a README file for installing Jenkins on port 8000 using puppet

# Jenkins will be launched as a daemon on startup. See /etc/init.d/jenkins for more details.

# The 'jenkins' user is created to run this service. If you change this to a different user via the config file, you must change the owner of /var/log/jenkins, /var/lib/jenkins, and /var/cache/jenkins.

# A Jenkins RPM repository is added in: /etc/yum.repos.d/jenkins.repo

# Log file: /var/log/jenkins/jenkins.log. Check this file if you are troubleshooting Jenkins.

# Config file: /etc/sysconfig/jenkins will capture configuration parameters for the launch.

# JENKINS_WAR="/usr/lib/jenkins/jenkins.war"
# JENKINS_CONFIG=/etc/sysconfig/jenkins
# JENKINS_PID_FILE="/var/run/jenkins.pid

---
# The location to use for storing cached Git repos
:cachedir: '/var/cache/r10k'

# A list of git repositories to create
:sources:
  # This will clone the git repository and instantiate an environment per
  # branch in /etc/puppetlabs/code/environments
  :my-org:
    remote: 'https://github.com/$YOUR_GITHUB_USERNAME$/control-repo.git'
    basedir: '/etc/puppetlabs/code/environments'

***************************************************************************/
