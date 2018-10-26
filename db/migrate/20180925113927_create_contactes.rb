class CreateContactes < ActiveRecord::Migration[5.2]
  def change
    create_table :contactes do |t|
      t.string :nom
      t.string :email
      t.string :telefon
      t.text :missatge

      t.timestamps
    end
  end
end
