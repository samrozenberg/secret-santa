class DropInstalls < ActiveRecord::Migration[6.1]
  def change
    drop_table :participant_pairs
  end
end
