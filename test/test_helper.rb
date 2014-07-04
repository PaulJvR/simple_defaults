require 'simple_defaults'
require 'minitest/stub_any_instance'
require 'minitest/unit'
require 'minitest/autorun'
require 'minitest/pride'

ActiveRecord::Base.establish_connection(adapter: "sqlite3",
                                        :database => File.dirname(__FILE__) + "/simple_defaults.sqlite3")


# Load support files
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

