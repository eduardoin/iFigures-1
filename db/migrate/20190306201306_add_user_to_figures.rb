class AddUserToFigures < ActiveRecord::Migration[5.2]
  def change
    add_reference :figures, :user, foreign_key: true
  end
end
