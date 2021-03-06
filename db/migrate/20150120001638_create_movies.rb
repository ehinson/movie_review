class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.string :movie_length
      t.string :director
      t.string :rating
      t.string :image

      t.timestamps
    end
  end
end
