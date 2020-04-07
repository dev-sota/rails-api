# frozen_string_literal: true

class CreateAdminUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :admin_users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :token

      t.timestamps
    end
    add_index :admin_users, :email, unique: true
  end
end
