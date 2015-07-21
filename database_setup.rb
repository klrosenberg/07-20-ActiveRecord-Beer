# Create database for this program.
DATABASE = SQLite3::Database.new("beer.db")

unless ActiveRecord::Base.connection.table_exists?(:beers)
  ActiveRecord::Base.connection.create_table :users do |t|
    t.string :name
    t.string :description
    t.float :abv
    t.string :brewery
    t.integer :ibu
    t.integer :styleId
  end  
end

