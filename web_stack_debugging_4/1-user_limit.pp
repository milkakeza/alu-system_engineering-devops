# This script enables the user to login and open files without error

# Increase hard file limit for the user
exec { 'increase-hard-file-limit-for-the-user':
  command => 'sed -i "/holberton hard/s/5/50000/" /etc/security/limits.conf',
  path    => '/usr/local/bin/:/bin/'
}

# Increase soft file limit for the user
exec { 'increase-soft-file-limit-for-the-user':
  command => 'sed -i "/holberton soft/s/4/50000/" /etc/security/limits.conf',
  path    => '/usr/local/bin/:/bin/'
}
