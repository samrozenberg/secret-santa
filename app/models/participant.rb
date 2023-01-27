class Participant < ApplicationRecord
  has_many :event_participants
  has_many :events, through: :event_participants
  has_many :pairs, through: :participant_pairs
  has_many :participant_pairs
end
