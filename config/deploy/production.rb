
server 'r3c', user: 'r3c', roles: %w{app db web}, rigeon: :ru

set :puma_workers, 2
set :puma_threads, [0, 4]

set :nginx_use_ssl, true