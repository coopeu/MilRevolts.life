class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :avatar       
 	has_one_attached :foto_moto

 	belongs_to :plan

 	attr_accessor :stripe_card_token 


 	def save_with_payment
 		if valid? 
 			customer = Stripe::Customer.create(description: email, plan: plan_id, 
 				card: stripe_card_token)
 			self.stripe_customer_token = customer.id
 			save!
 		end
 	end

end
