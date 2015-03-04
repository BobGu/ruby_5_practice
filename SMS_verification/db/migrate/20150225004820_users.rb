class Users < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :phone_number
      t.string :phone_verification_code
      t.boolean :phone_verified
    end
  end
end
