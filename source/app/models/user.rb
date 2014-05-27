class User < ActiveRecord::Base
	has_many :memberships, foreign_key: :member_id ##
	has_many :created_groups, class_name: "Group", foreign_key: :creator_id ##
	has_many :joined_groups, through: :memberships, source: :group ##
end
