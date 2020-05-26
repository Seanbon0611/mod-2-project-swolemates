class CreateSpecialties < ActiveRecord::Migration[6.0]
  def change
    create_table :specialties do |t|
      t.string :name
      t.belongs_to :coach, null: false, foreign_key: true
      t.string :img_url

      t.timestamps
    end
  end
end
