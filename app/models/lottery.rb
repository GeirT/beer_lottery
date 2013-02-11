class Lottery < ActiveRecord::Base
  attr_accessible :description, :due_at, :title, :prizes_attributes, :user_ids
  has_many :prizes
  has_and_belongs_to_many :users
  accepts_nested_attributes_for :prizes, reject_if: :all_blank, allow_destroy: true

  validates :title, presence: true
end
