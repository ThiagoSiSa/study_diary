class SeeAll
  require 'sqlite3'
  require './print'

  def self.show
    db = SQLite3::Database.open "db/data.db"
    database =db.execute('SELECT * FROM study_items ')

    Print.printing(database)     

  rescue SQLite3::Exception => e
    puts e
  ensure
    db.close if db
  end
  
end
