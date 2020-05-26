class CreateGyms < ActiveRecord::Migration[6.0]
  def change
    create_table :gyms do |t|
      t.string :name
      t.string :address
      t.boolean :is_open
      t.string :img_url

      t.timestamps
    end
  end
end
