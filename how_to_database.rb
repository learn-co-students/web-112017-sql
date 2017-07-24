require 'sqlite3'
require 'pry'

# module SQLite3
#   class Database
#
#   end
#
# end

db = SQLite3::Database.new('chinook.db')

sql = 'SELECT * FROM artists;'
db.execute(sql)

more_sql = <<-SQL
SELECT * from tracks
JOIN albums
ON tracks.AlbumId = albums.AlbumId
SQL

db.execute(more_sql)

binding.pry
"bye"
