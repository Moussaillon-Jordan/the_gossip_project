class City < ApplicationRecord
	 has_many :users 	#City en relation 1-N avec User
	 has_many :gossips, through: :users
end
