class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :title
      t.integer :creator_id
      t.string :voter_response

      t.timestamps
    end
  end
end
