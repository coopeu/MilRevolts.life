class Anunci < ApplicationRecord

	belongs_to :user, :class_name => "User", :foreign_key => 'user_name'

end
