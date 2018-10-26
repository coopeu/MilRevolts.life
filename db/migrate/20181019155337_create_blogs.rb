class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :titol
      t.string :foto
      t.text :contingut

      t.timestamps
    end
  end
end
