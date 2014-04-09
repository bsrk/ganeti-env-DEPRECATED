class module::hosts {
  $anodes = array($nodes)
  module::node { $anodes: }
  host {
    'cluster.example.org':
      ensure => present,
      host_aliases => 'cluster',
      ip => '33.33.33.50';
  }
  $ainstances = array($instances)
  module::instance { $ainstances: }
}
