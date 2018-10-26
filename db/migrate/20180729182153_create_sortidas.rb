class CreateSortidas < ActiveRecord::Migration[5.2]
  def change
    create_table :sortidas do |t|
      t.string :title

      t.timestamps
    end
  end
end
