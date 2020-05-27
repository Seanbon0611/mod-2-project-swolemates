class AddPasswordHashToMembers < ActiveRecord::Migration[6.0]
  def change
    add_column :members, :password_hash, :string
  end
end
