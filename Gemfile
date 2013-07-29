source 'https://rubygems.org'

gem 'rails', '3.2.13'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'


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

gem 'dynamic_form'          #help build forms and pass back meaninful errors from the model
gem 'devise'                #user authentication

group :development do
  gem "better_errors"       #better error messages on your browser 
                            #got to localhost:3000/__better_errors to get the screen at any time in the page
  gem "binding_of_caller"   #better errors optional dependency for even nicer traces and live irb session
end
#
#
group :test do
  gem 'capybara'            #navigate websites in tests
  gem 'factory_girl'
  gem 'simplecov', :require => false  #see how covered you are with your tests
end

group :development, :test do
  gem 'rspec-rails'
  gem 'launchy'
  gem 'pry'
end

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
