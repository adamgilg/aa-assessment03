class CreateTables < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.integer :band_id
    end

    create_table :bands do |t|
      t.string :name
    end

    create_table :songs do |t|
      t.string :name
      t.integer :artist_id
    end

    create_table :recordings do |t|
      t.string :name
      t.integer :song_id
      t.integer :band_id
    end
  end



end
