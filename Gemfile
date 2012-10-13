source :rubygems

ruby '1.9.3'

gem 'haml'
gem 'rails', '3.2.7'

group :assets do
  gem 'backbone-on-rails'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'eco'
  gem 'haml_assets'
  gem 'jquery-rails'
  gem 'sass-rails',   '~> 3.2.3'
  gem 'uglifier', '>= 1.0.3'
end

group :development, :test do
  gem 'brakeman'
  gem 'jasmine-headless-webkit',
    :git => 'git://github.com/johnbintz/jasmine-headless-webkit.git'
  gem 'jasmine-rails'
  gem 'sqlite3'
end

group :test do
  gem 'capybara-webkit'
  gem 'capybara'
  gem 'guard-bundler'
  gem 'guard-jasmine-headless-webkit'
  gem 'guard-rspec'
  gem 'guard-spork'
  gem 'rb-fsevent', '~> 0.9.1'
  gem 'rspec-rails'
end

group :production do
  gem 'pg'
end
