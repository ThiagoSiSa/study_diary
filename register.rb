class Register
  require 'sqlite3'

  def self.create(title, category)
    data = [[title, category, 0]]
    db = SQLite3::Database.open "db/data.db"
    db.execute('INSERT INTO study_items (title, category, done) VALUES(?,?,?)', data)
  rescue SQLite3::Exception => e
    puts e
  ensure
    db.close if db

  end
  
    InitialPage
  
end
