class RemoveColumnFromMovies < ActiveRecord::Migration
  def change
    remove_column :movies, :string, :string
  end
end
