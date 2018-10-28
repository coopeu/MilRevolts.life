class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
    	t.integer :user_id
    	t.string :nom
    	t.string :cognom1
    	t.string :cognom2
    	t.string :moto
    	t.string :localitat
    	t.string :mobil
    	t.text :description
    end
  end
end
