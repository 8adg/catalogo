class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :nombre
      t.text :descr_c
      t.text :descr_l
      t.string :precio
      t.string :image

      t.timestamps null: false
    end
  end
end
