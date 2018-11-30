class AddPageToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :page, :string
  end
end
