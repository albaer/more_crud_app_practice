class Group < ActiveRecord::Base
	has_many :memberships ##
	belongs_to :creator, class_name: "User" ##
	has_many :members, through: :memberships ##
end
