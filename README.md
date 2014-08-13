mailcatcher
===========

MailCatcher runs a super simple SMTP server which catches any message sent to
it to display in a web interface.

Samples
-------
```
include mailcatcher
```
```
mailcatcher::service { 'default': ensure => running, enable => true }
```

License
-------
GPL3

Contact
-------
breauxaj AT gmail DOT com
