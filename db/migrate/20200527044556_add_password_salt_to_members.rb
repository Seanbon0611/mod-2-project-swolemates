class AddPasswordSaltToMembers < ActiveRecord::Migration[6.0]
  def change
    add_column :members, :password_salt, :string
  end
end
