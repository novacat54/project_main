$LOAD_PATH << '.'
require './features/lib/ListRow'
require './features/lib/SeriesSelectionRow'
require './features/lib/DynamicRow'
require 'capybara/cucumber'


Capybara.register_driver :firefox do |app|
  Capybara::Selenium::Driver.new(app)
end

Capybara.default_driver = :selenium




