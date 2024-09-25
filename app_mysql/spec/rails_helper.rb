require 'spec_helper'
require 'capybara/rspec'
require 'shoulda/matchers'
ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
# Prevent database truncation if the environment is production
abort("The Rails environment is running in production mode!") if Rails.env.production?

require 'rspec/rails'

begin
ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => e
abort e.to_s.strip
end

RSpec.configure do |config|
# Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
config.fixture_path = "#{::Rails.root}/spec/fixtures"

# Configuración de Shoulda Matchers
Shoulda::Matchers.configure do |config|
config.integrate do |with|
with.test_framework :rspec
with.library :rails
end
end

config.use_transactional_fixtures = true
config.infer_spec_type_from_file_location!
config.filter_rails_from_backtrace!
end
