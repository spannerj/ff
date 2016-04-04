# Set Postgres version to 9.3.
class { 'postgresql::globals':
  manage_package_repo => true,
  version             => '9.3',
} ->
class { 'postgresql::server':
  listen_addresses           => '*',
  postgres_password          => 'lrff',
}

postgresql::server::db { 'lrffdb':
  user     => 'lr',
  password => postgresql_password('lr', 'lrff'),
}
# rule for remote connections
postgresql::server::pg_hba_rule { 'allow remote connections with password':
  type        => 'host',
  database    => 'all',
  user        => 'all',
  address     => 'all',
  auth_method => 'md5',
}