class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :description
      t.integer :duration
      t.integer :director_id
      t.timestamp :release_date
      t.integer :address_id

      t.timestamps
    end
  end
end
