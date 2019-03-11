class ChangeReservedOnFigures < ActiveRecord::Migration[5.2]
  def change
    change_column :figures, :reserved, :boolean, :default => false
  end
end
