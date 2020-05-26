class CreateCoaches < ActiveRecord::Migration[6.0]
  def change
    create_table :coaches do |t|
      t.string :name
      t.belongs_to :gym, null: false, foreign_key: true
      t.string :img_url

      t.timestamps
    end
  end
end
