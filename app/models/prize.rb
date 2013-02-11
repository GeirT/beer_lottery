class Prize < ActiveRecord::Base
  belongs_to :lottery
  attr_accessible :description, :name, :lottery_id
  validates :name, presence: true
end
