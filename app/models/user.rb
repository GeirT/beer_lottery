class User < ActiveRecord::Base
  attr_accessible :birthday, :description, :name, :nick_name
  has_and_belongs_to_many :lotteries

  validates :name, presence: true
end
