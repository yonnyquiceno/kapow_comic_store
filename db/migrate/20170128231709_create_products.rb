class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.string :description
      t.string :image1
      t.string :image2

      t.timestamps null: false
    end
  end
end
