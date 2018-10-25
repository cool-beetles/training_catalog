class CreateTrainings < ActiveRecord::Migration[5.1]
  def change
    create_table :trainings do |t|
      t.string :title
      t.integer :exercise_id

      t.timestamps
    end
  end
end
