$LOAD_PATH << '.'
require './features/lib/ListRow'
require 'capybara/cucumber'
$LOAD_PATH << '.'
 './features/lib/test'

Capybara.register_driver :firefox do |app|
  Capybara::Selenium::Driver.new(app)
end

Capybara.default_driver = :selenium




