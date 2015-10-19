source 'https://rubygems.org'

ruby '2.2.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# need to decide if I want to keep using it
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'

# Use devise to manage user authentication
gem "devise"

# Use pundit together with devise to allow multi-role user authorization
gem 'pundit'

# Use gmaps4rails and geocoder to faciliate google map features
gem 'gmaps4rails'
gem 'geocoder'

gem "auto_html"
gem 'acts_as_votable', '~> 0.10.0'

# use rails erd to visualize rails schema, use custom rake tasks to run it
gem 'rails-erd'

# design
gem "font-awesome-rails"
gem 'bourbon'
gem 'neat'
gem 'refills'
gem "normalize-rails"
gem 'bootstrap-sass', '~> 3.1.1'

# figaro securely configures rails applications, check https://github.com/laserlemon/figaro; note that special setup is requires for heroku
gem 'figaro'

# twilio adds SMS integration
gem 'twilio-ruby', '~> 4.2.1'

gem 'sdoc', '~> 0.4.0', group: :doc



group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  gem 'sqlite3'
  gem 'rspec-rails', '~> 3.0.0'
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'shoulda-matchers'
  gem 'faker'
  gem 'selenium-webdriver'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'simplecov'
  gem 'pry'
  gem 'guard-rspec', require: false
  #  gem 'thin' this gem gives me eventmachine errors, so I am going to leave it out for now
end

group :production do
  gem 'pg'
  gem 'google-analytics-rails'
  gem 'rails_12factor'
end


