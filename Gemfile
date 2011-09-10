source 'http://rubygems.org'

gem 'rails', '3.1.0'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'mysql2'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end



# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

gem "devise"
gem "haml", ">= 3.0.0"
gem "haml-rails"
gem "jquery-rails"
# gem "rails_admin", :git => "git://github.com/sferik/rails_admin.git"
gem 'activeadmin'
gem "meta_search",    '>= 1.1.0.pre'

group :production do
  gem "pg"
end

group :test do
  gem "rspec-rails", ">= 2.0.1", :group => [:development, :test]
end

group :development do
  gem "ruby-debug19"
end
