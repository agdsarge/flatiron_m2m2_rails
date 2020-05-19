class CreateApplicants < ActiveRecord::Migration[6.0]
  def change
    create_table :applicants do |t|
      t.string :name
      t.text :cv
      t.integer :graduation_year

      t.timestamps
    end
  end
end
