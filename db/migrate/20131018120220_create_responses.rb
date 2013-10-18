class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.string :voter_response
      t.references :question
      t.integer :voter_id

      t.timestamps
    end
  end
end
