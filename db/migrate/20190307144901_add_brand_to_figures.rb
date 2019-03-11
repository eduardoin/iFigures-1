class AddBrandToFigures < ActiveRecord::Migration[5.2]
  def change
    add_column :figures, :brand, :string
  end
end
