class CreatePairs < ActiveRecord::Migration[6.1]
  def change
    create_table :pairs do |t|
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
