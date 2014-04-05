host {
  'node1.example.org':
    ensure => present,
    host_aliases => 'node1',
    ip => '33.33.33.11';
  'node2.example.org':
    ensure => present,
    host_aliases => 'node2',
    ip => '33.33.33.12';
  'node3.example.org':
    ensure => present,
    host_aliases => 'node3',
    ip => '33.33.33.13';
}
package {
  'ubuntu-virt-server':
    ensure => installed;
  'drbd8-utils':
    ensure => installed;
}
