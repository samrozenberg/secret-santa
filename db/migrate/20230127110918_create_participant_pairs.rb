class CreateParticipantPairs < ActiveRecord::Migration[6.1]
  def change
    create_table :participant_pairs do |t|
      t.references :participant, null: false, foreign_key: true
      t.references :pair, null: false, foreign_key: true

      t.timestamps
    end
  end
end
