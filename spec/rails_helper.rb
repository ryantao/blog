# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV['RAILS_ENV'] ||= 'test'
require 'spec_helper'
require File.expand_path('../../config/environment', __FILE__)
require 'rspec/rails'
# Add additional requires below this line. Rails is not loaded until this point!

# Requires supporting ruby files with custom matchers and macros, etc, in
# spec/support/ and its subdirectories. Files matching `spec/**/*_spec.rb` are
# run as spec files by default. This means that files in spec/support that end
# in _spec.rb will both be required and run as specs, causing the specs to be
# run twice. It is recommended that you do not name files matching this glob to
# end with _spec.rb. You can configure this pattern with the --pattern
# option on the command line or in ~/.rspec, .rspec or `.rspec-local`.
#
# The following line is provided for convenience purposes. It has the downside
# of increasing the boot-up time by auto-requiring all files in the support
# directory. Alternatively, in the individual `*_spec.rb` files, manually
# require only the support files necessary.
#
# Dir[Rails.root.join('spec/support/**/*.rb')].each { |f| require f }

# Checks for pending migrations before tests are run.
# If you are not using ActiveRecord, you can remove this line.
ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  # If you're not using ActiveRecord, or you'd prefer not to run each of your
  # examples within a transaction, remove the following line or assign false
  # instead of true.
  config.use_transactional_fixtures = true

  # RSpec Rails can automatically mix in different behaviours to your tests
  # based on their file location, for example enabling you to call `get` and
  # `post` in specs under `spec/controllers`.
  #
  # You can disable this behaviour by removing the line below, and instead
  # explicitly tag your specs with their type, e.g.:
  #
  #     RSpec.describe UsersController, :type => :controller do
  #       # ...
  #     end
  #
  # The different available types are documented in the features, such as in
  # https://relishapp.com/rspec/rspec-rails/docs
  config.infer_spec_type_from_file_location!
end



def new_user
    @user = Hash.new
    @user[:email] = Random.new().rand(10000).to_s + "@user.com" 
    @user[:id] = Random.new().rand(10000)
    @user[:name] = "1111"
    @user[:last_name] = "1111"
    @user[:first_name] = "1111" 
    @user[:password_digest] = "1111"
    
    return @user
end


def new_inv_user
    @user = Hash.new
    @user[:email] = Random.new().rand(10000).to_s  +  "@user.com"
    @user[:last_name] = ""
    @user[:first_name] = Random.new().rand(10000).to_s  
    @user[:password_digest] = Random.new().rand(10000).to_s  

    return @user
end



def new_comment
    @comment = Hash.new
    @comment[:id] = Random.new().rand(10000).to_s  
    @comment[:user_id] = 1
    @comment[:text] = "sdasdasdas" + Random.new().rand(10000).to_s  
    @comment[:article_id] = 1
    p "!!!!"
    p @comment
    return @comment
end


def new_inv_comment
    @comment = Hash.new
    @comment[:user_id] = 1
    @comment[:text] = ""
    @comment[:article_id] = 0
    return @comment
end


def new_article
    @article = Hash.new
    @article[:title] = "title" + Random.new().rand(10000).to_s  
    @article[:text] = "sdasdasdas"
    @article[:user_id] = 1
    return @article
end


def new_session
    @session = {}
    @session[:user_id] = 1
    return @session
end

