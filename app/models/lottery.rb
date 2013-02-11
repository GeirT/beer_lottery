class Lottery < ActiveRecord::Base
  attr_accessible :description, :due_at, :title, :prizes_attributes
  has_many :prizes
  accepts_nested_attributes_for :prizes, reject_if: :all_blank, allow_destroy: true
  validates :title, presence: true
end
