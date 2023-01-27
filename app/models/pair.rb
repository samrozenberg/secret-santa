class Pair < ApplicationRecord
  belongs_to :event
  has_many :participants, through: :participant_pairs
  has_many :participant_pairs
end
