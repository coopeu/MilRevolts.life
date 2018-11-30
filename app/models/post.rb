class Post < ApplicationRecord

	belongs_to :user
	belongs_to :category, optional: true 
	has_many :comments, dependent: :destroy

	has_one_attached :foto
	has_many_attached :images

	validates :title, :content, :category, presence: true


	extend FriendlyId
	friendly_id :title, :use => :slugged

	def should_generate_new_friendly_id?
		title_changed?
	end 

end
