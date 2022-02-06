class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :nif
      t.string :name
      t.string :surname1
      t.string :surname2
      t.string :address
      t.string :pc
      t.string :city
      t.string :province
      t.string :phone1
      t.string :phone2
      t.string :email2
      t.boolean :suscriptor

      t.timestamps
    end
  end
end
