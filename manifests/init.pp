class mailcatcher (
  $ensure = 'latest'
){
  $required = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => 'mailcatcher',
  }

  $depends = $::operatingsystem ? {
    /(?i-mx:centos|fedora|redhat|scientific)/ => [ 'rubygems' ],
  }

  package { $required:
    ensure   => $ensure,
    provider => gem,
    require  => Package[$depends]
  }

}
