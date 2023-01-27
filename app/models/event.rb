class Event < ApplicationRecord
  belongs_to :user
  has_many :pairs
  has_many :event_participants
  has_many :participants, through: :event_participants
  accepts_nested_attributes_for :participants
  validates :title, presence: true
  validates :max_amount, presence: true
end
