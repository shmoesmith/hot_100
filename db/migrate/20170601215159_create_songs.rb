class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :song_title
      t.string :song_artist
      t.belongs_to :billboard
      t.timestamps
    end
  end
end
