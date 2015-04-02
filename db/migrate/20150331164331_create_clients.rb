class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :phone
      t.boolean :vip, default: false
      t.string :email
      t.boolean :gender

      t.timestamps null: false
    end
  end
end