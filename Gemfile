source 'https://rubygems.org'
ruby '2.1.2'

gem 'rails', '4.1.0'

gem 'airbrake'
gem 'bootstrap-sass'
gem 'coffee-rails', '~> 4.0.0'
gem 'devise'
gem 'draper'
gem 'friendly_id'
gem 'haml-rails'
gem 'jbuilder', '~> 2.0'
gem 'jquery-rails'
gem 'pg'
gem 'sass-rails', '~> 4.0.3'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'sendgrid'
gem 'select2-rails'
gem 'simple_form', github: "plataformatec/simple_form", branch: "master"
gem 'turbolinks'
gem 'uglifier', '>= 1.3.0'
gem 'wisper'

group :development do
  gem 'better_errors'
  gem 'binding_of_caller', platforms: %i(mri_19 mri_20 mri_21 rbx)
  gem 'foreman'
  gem 'letter_opener'
  gem 'quiet_assets'
  gem 'rails_layout'
  gem 'spring'
  gem 'spring-commands-rspec'
end

group :development, :test do
  # https://github.com/dockyard/capybara-email/issues/26
  gem 'capybara-email', github: 'dockyard/capybara-email'
  gem 'dotenv-rails'
  gem 'factory_girl_rails'
  gem 'launchy'
  gem 'pry'
  gem 'pry-byebug'
  gem 'pry-stack_explorer'
  gem 'quality', github: 'andyw8/quality', branch: 'disabled-auto-git-commit'
  gem 'rspec-rails'
  gem 'shoulda-matchers', require: false
end

group :test do
  gem 'capybara', '~> 2.3.0'
  gem 'codeclimate-test-reporter', require: false
  gem 'database_cleaner', '1.0.1'
  gem 'rspec-activemodel-mocks'
  # simplecov is used by codeclimate-test-reporter but
  # circleci recommends avoiding 0.8 due to
  # https://github.com/colszowka/simplecov/issues/281
  gem 'simplecov', '~> 0.7.1'
end

group :production do
  gem 'rails_12factor'
end
