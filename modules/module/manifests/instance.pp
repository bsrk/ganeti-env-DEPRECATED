define module::instance {
  $hn = hostname($title)
  host {
    $hn:
      ensure => present,
      host_aliases => $title,
      ip => instanceip($title);
  }
}
