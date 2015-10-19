class User < ActiveRecord::Base
  # sets up authorization scenarios according to location in the array
	enum role: [:user, :coach]
	after_initialize :set_default_role, :if => :new_record?

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :races
  has_many :workouts
  has_many :comments, through: :workouts
  
  # sets default role for pundit authorization
  # for development purposes, role will be coach
	def set_default_role
		self.role ||= :coach
	end

end
