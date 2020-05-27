class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.string :name
      t.string :email
      t.string :address
      t.integer :age
      t.string :img_url
      t.string :password_digest
      t.timestamps
    end
  end
end
