source 'https://rubygems.org'

ruby '2.2.6'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails',                  '4.2.8'
gem 'sass-rails',             '~> 5.0'
gem 'uglifier',               '~> 3.1'
gem 'coffee-rails',           '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Materialize for Rails asset pipeline
gem 'materialize-sass',       '~> 0.98'
gem 'jquery-rails',           '~> 4.2', '>= 4.2.2'
gem 'turbolinks',             '~> 2.5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder',               '~> 2.6'
gem 'time_diff',              '~> 0.3'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

group :development, :test do
  gem 'rspec-rails',          '~> 3.5'
  gem 'sqlite3',              '~> 1.3'
  gem 'capybara',             '~> 2.13'
  gem 'poltergeist',          '~> 1.10'
  gem 'timecop',              '~> 0.8.1'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console'
  gem 'better_errors'
  gem 'pry'
end

group :test do
  gem 'codacy-coverage',      '~> 1.0.0',   require: false
end

group :test, :development do
  gem 'rubocop',              '~> 0.42.0'
end

group :production do
  gem 'pg',                   '~> 0.20'
  gem 'rails_12factor',       '~> 0.0'
  gem 'puma',                 '~> 2.11'
end
