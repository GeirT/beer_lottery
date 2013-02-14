# If you have a very small app you may be able to
# increase this, but in general 3 workers seems to
# work best
worker_processes 3

# Load your app into the master before forking
# workers for super-fast worker spawn times
preload_app true

# Immediately restart any workers that
# haven't responded within 30 seconds
timeout 30

# http://kuon.goyman.com/2012/heroku_unicorn/
# Note: the after_fork is required to avoid SSL errors with postgresql.
# Some tips here as well: http://blog.railsonfire.com/2012/05/06/Unicorn-on-Heroku.html
# after_fork do |server, worker|
#   defined?(ActiveRecord::Base) and
#   ActiveRecord::Base.establish_connection
# end
