class User < ActiveRecord::Base
  include BCrypt

	has_many :memberships, foreign_key: :member_id ##
	has_many :created_groups, class_name: "Group", foreign_key: :creator_id ##
	has_many :joined_groups, through: :memberships, source: :group ##

	# bcrypt login and authentication methods
  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(username, password)
    @current_user = self.find_by_username(username)
    if @current_user && @current_user.password == password
      @current_user
    else
      nil
    end
  end

end
