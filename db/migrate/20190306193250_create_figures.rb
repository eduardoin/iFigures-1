class CreateFigures < ActiveRecord::Migration[5.2]
  def change
    create_table :figures do |t|
      t.float    :price
      t.string   :name
      t.text     :description
      t.string   :status
      t.string   :address
      t.boolean  :reserved

      t.timestamps
    end
  end
end
