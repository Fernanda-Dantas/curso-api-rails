source "https://rubygems.org"

ruby "3.0.2"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.1.3", ">= 7.1.3.2"
# Centralization of locale data collection for Ruby on Rails.
gem 'rails-i18n', '~> 7.0.0' 

# Use sqlite3 as the database for Active Record
gem "sqlite3", "~> 1.4"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", ">= 5.0"
# Json Web Token
gem 'jwt'
# Devise Token Auth
gem 'devise_token_auth'
gem 'devise-i18n'

# A Scope & Engine based, clean, powerful, customizable and sophisticated paginator for Ruby webapps
gem 'kaminari'

#Link header pagination for Rails and Grape APIs.
# gem 'api-pagination'

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
# gem "jbuilder"

# Use Redis adapter to run Action Cable in production
# gem "redis", ">= 4.0.1"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mswin mswin64 mingw x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin Ajax possible
 gem "rack-cors"
 gem 'rack'

# FOREMAN GEM
gem "foreman"

gem "versionist"

 # ActiveModelSerializers
 gem 'active_model_serializers', '~> 0.10.0'

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  # gem "debug", platforms: %i[ mri mswin mswin64 mingw x64_mingw ]
  #  a library for generating fake data such as names, addresses, and phone numbers.
  gem 'faker', '>= 2.0', '< 3.0'
  gem 'rspec-rails', '~> 6.1.0'
  # pry-rails
  gem 'pry-rails'
end

group :development do
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

