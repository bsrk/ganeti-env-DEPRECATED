define module::node {
  $hn = hostname($title)
  host {
    $hn:
      ensure => present,
      host_aliases => $title,
      ip => nodeip($title);
  }
}
