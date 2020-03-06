require 'bundler'
Bundler.require



ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
require_all 'lib'

ActiveRecord::Base.logger = nil
old_logger = ActiveRecord::Base.logger
