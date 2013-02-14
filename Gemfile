source 'https://rubygems.org'

# ~> updates y in 1.0.y  (recommended)
# => updates x and y in 1.x.y
# no version, updates to latest (unstable)
# Gemfile.lock has control of the gem versions. When you change this, verify that the gem updates are OK, it will affect everybody.

gem 'rails', '3.2.12'
gem 'json', '~> 1.7.7'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'


gem 'pg'
gem 'devise'
gem 'bootstrap-sass', '~> 2.2.2.0'

group :production do
  gem 'unicorn'
end

group :test, :development do
  gem "rspec-rails", "~> 2.0"
  gem 'factory_girl_rails'
end


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
