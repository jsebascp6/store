source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

# Standard Gems
gem 'rails', '~> 6.0.3', '>= 6.0.3.7'
gem 'pg', '>= 0.18', '< 2.0'
gem 'jbuilder', '~> 2.7'

# Assets
gem 'sass-rails', '>= 6'

# HTML Forms and Views
gem 'haml-rails', '~> 2.0'
gem 'turbolinks', '~> 5'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'webpacker', '~> 4.0'

# Server
gem 'puma', '~> 4.1'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails', '~> 4.0.0.beta2'
  gem 'database_cleaner'
  gem 'factory_bot_rails'
  gem 'capybara'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
