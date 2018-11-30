class Profile < ActiveRecord::Base

belongs_to :user
#attr_accessible :nom, :avatar, :moto, :foto_moto, :localitat, :data_naixement, :presentacio, :mobil, :sortides, :plan_id

end
