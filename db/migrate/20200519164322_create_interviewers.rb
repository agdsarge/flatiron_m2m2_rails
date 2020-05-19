class CreateInterviewers < ActiveRecord::Migration[6.0]
  def change
    create_table :interviewers do |t|
      t.string :name
      t.string :department
      t.integer :cheer

      t.timestamps
    end
  end
end
