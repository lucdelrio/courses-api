# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'actionview', '>= 5.2.4.2'
gem 'rails', '~> 5.2.3'

# Use postgresql as the database for Active Record
gem 'pg', '1.1.4'
# Use Puma as the app server
gem 'puma', '~> 4.3'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails', '5.0.2'
  gem 'faker', '1.9.3'
  gem 'rspec', '~> 3.8'
  gem 'rspec-json_expectations', '~> 2.2.0'
  gem 'rspec-rails', '~> 3.8.2'
  gem 'rubocop', '~> 0.66.0'
  gem 'shoulda-matchers', '4.0.1'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring', '~> 2.0.2'
  gem 'spring-watcher-listen', '~> 2.0.1'
end
