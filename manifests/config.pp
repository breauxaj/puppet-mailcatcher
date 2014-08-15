# Define: mailcatcher::config
#
# This define creates a file under /etc/sysconfig for Mailcatcher
#
# Parameters:
#
#  ip:
#    Set the ip address of both servers
#
#  smtp_ip:
#    Set the ip address of the smtp server
#
#  smtp_port:
#    Set the port of the smtp server
#
#  http_ip:
#    Set the ip address of the http server
#
#  http_port:
#    Set the port of the http server
#
# Actions:
#   - Creates /etc/sysconfig/mailcatcher file referenced by init script
#
# Requires:
#
# Sample Usage:
#
#  To set the listen ip for both servers, use:
#
#    mailcatcher::config { 'default':
#      ip => '192.168.1.25'
#    }
#
define mailcatcher::config (
  $ip = '127.0.0.1',
  $smtp_ip = '127.0.0.1',
  $smtp_port = '1025',
  $http_ip = '127.0.0.1',
  $http_port = '1080'
) {
  file { '/etc/sysconfig/mailcatcher':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('mailcatcher/sysconfig.erb'),
  }

}
