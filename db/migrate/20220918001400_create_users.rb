class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip_code
      t.integer :uin
      t.string :email
      t.string :phone_number
      t.integer :committee_id
      t.string :permission_type

      t.timestamps
    end
  end
end
