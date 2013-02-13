class User < ActiveRecord::Base
  attr_accessible :birthday, :description, :name, :nick_name, :email
  has_and_belongs_to_many :lotteries

  validates :email, :name, presence: true
  validates :email, uniqueness: true
end
