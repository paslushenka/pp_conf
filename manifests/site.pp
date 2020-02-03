node default {
}

node 'master.puppet' {
}

node 'slave1.puppet' {
  file { '/root/README':
    ensure => absent,
    }
}

node 'slave2.puppet' {
  file { '/root/README':
    ensure => absent,
    }
}

node 'mineserver.puppet' {
}
