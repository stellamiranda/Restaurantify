
RAILS_GEM_VERSION = '2.3.2' unless defined? RAILS_GEM_VERSION

require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|

  config.time_zone = 'UTC'

  #lo que agrege
  config.gem "thoughtbot-clearance",
  :lib     => 'clearance',
  :source  => 'http://gems.github.com',
  :version => '0.6.9'

  config.gem "thoughtbot-shoulda",
  :lib => 'shoulda',
  :source => 'http://gems.github.com'
#  :version => '2.10.1'

  DO_NOT_REPLY = "donotreply@example.com"
  
end