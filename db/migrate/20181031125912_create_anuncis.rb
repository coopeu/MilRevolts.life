class CreateAnuncis < ActiveRecord::Migration[5.2]
  def change
    create_table :anuncis do |t|
      t.string :name
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
