class CreateExercises < ActiveRecord::Migration[5.1]
  def change
    create_table :exercises do |t|
      t.string :title
      t.integer :repetition
      t.integer :set

      t.timestamps
    end
  end
end
