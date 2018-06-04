node default {
  file {'/root/README':
    ensure  => file,
    content => "This is a sample README\n",
    owner   => 'root',
  }
}
