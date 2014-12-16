source 'https://rubygems.org'

ruby '2.1.5'

gem 'rails', '4.2.0.beta2'
gem 'rails-api'
gem 'pg'
gem 'dotenv'

gem 'arel', '6.0.0.beta2' # Using this because of problem with migration. More info here: http://stackoverflow.com/questions/27139007/cant-migrate-database-after-scaffold-section-2-2-ruby-on-rails-tutorial-michae

gem 'httparty'
gem 'nokogiri'

gem 'newrelic_rpm'

gem 'rails_12factor', group: :production # Heroku

gem "codeclimate-test-reporter", group: :test, require: nil

gem 'rack-cors', require: 'rack/cors'

group :development, :test do
  gem 'dotenv-rails'
  gem 'spring'
  gem 'pry-rails'
  gem 'rspec-rails', '3.1.0'
  gem 'factory_girl_rails'
  gem 'faker'
end
