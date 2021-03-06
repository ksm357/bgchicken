class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :boards
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
