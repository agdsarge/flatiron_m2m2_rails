class CreateMeetings < ActiveRecord::Migration[6.0]
  def change
    create_table :meetings do |t|
      t.integer :applicant_id
      t.integer :interviewer_id
      t.datetime :date
      t.integer :score

      t.timestamps
    end
  end
end
