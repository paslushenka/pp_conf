node default {
}

node 'master.puppet' {
   file { '/root/README':
      ensure => absent,
      }
}

node 'slave1.puppet' {
   class { 'apache': }
   
   file { '/root/README':
      ensure => absent,
      }
   
   file { '/var/www/html/web1.org/html/index.html':
      ensure => file,
      source => 'https://raw.githubusercontent.com/paslushenka/devops-hometasks/master/task-04/files/index.html',
      replace => false,
      }
}

node 'slave2.puppet' {
   class { 'apache::mod::php': }
   
   class { 'php': }
   
   file { '/root/README':
      ensure => absent,
      }
   
   file { '/var/www/html/index.php':
      ensure => file,
      source => 'https://raw.githubusercontent.com/paslushenka/devops-hometasks/master/task-04/files/index.php',
      replace => false,
      }
}


node 'mineserver.puppet' {
}
