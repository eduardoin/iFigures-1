class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.boolean :main_picture
      t.string :picture
      t.references :figure, foreign_key: true

      t.timestamps
    end
  end
end
