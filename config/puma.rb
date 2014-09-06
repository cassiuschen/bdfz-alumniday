APP_ROOT = '/var/mirrors/bdfz-alumniday'
num_worker = 1

# Second, you can choose how many threads that you are going to run at same time.
workers 1
threads 1,16

# Unless you know what you are changing, do not change them.
bind "unix://#{APP_ROOT}/tmp/puma.alumniday.sock"
stdout_redirect "#{APP_ROOT}/log/puma.log","#{APP_ROOT}/log/puma.err.log"
pidfile "#{APP_ROOT}/tmp/pid/puma.pid"
state_path "#{APP_ROOT}/tmp/state/puma.state"
daemonize true
activate_control_app
preload_app!
