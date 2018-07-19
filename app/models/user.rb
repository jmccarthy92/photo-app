class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :payment
  #  when we sign a up a user it's handled through the registration new form
  # so in that form not only are we going to hit theu sers but we will hit the
  # payments aswell
  accepts_nested_attributes_for :payment
  has_many :images
end
