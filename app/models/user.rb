class User < ActiveRecord::Base
  attr_accessible :birthday, :description, :name, :nick_name

  validates :name, presence: true
end
