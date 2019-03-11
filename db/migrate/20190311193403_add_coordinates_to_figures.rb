class AddCoordinatesToFigures < ActiveRecord::Migration[5.2]
  def change
    add_column :figures, :latitude, :float
    add_column :figures, :longitude, :float
  end
end
