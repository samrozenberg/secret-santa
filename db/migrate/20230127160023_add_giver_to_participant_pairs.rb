class AddGiverToParticipantPairs < ActiveRecord::Migration[6.1]
  def change
    add_column :participant_pairs, :giver, :boolean
  end
end
