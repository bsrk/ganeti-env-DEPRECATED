class module::install {
  package {
    'ubuntu-virt-server':
      ensure => installed;
    'drbd8-utils':
      ensure => installed;
    'ssh':
      ensure => installed;
    'iputils-arping':
      ensure => installed;
    'm4':
      ensure => installed;
    'ndisc6':
      ensure => installed;
    'openssl':
      ensure => installed;
    'socat':
      ensure => installed;
    'fping':
      ensure => installed;
    'python-openssl':
      ensure => installed;
    'python-pyparsing':
      ensure => installed;
    'python-simplejson':
      ensure => installed;
    'python-bitarray':
      ensure => installed;
    'python-pyinotify':
      ensure => installed;
    'python-pycurl':
      ensure => installed;
    'python-ipaddr':
      ensure => installed;
    'python-paramiko':
      ensure => installed;
    'python-dev':
      ensure => installed;
    'python-setuptools':
      ensure => installed;
    'libyaml-dev':
      ensure => installed;
    'ghc':
      ensure => installed;
    'cabal-install':
      ensure => installed;
    'libpcre3-dev':
      ensure => installed;
    'libcurl4-openssl-dev':
      ensure => installed;
    'autoconf':
      ensure => installed;
    'libghc-text-dev':
      ensure => installed;
    'debootstrap':
      ensure => installed;
    'dump':
      ensure => installed;
    'git':
      ensure => installed;
    'graphviz':
      ensure => installed;
    'pandoc':
      ensure => installed;
    'kpartx':
      ensure => installed;
  }
}
