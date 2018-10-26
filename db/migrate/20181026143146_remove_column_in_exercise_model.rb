class RemoveColumnInExerciseModel < ActiveRecord::Migration[5.1]
  def change
    remove_column :exercises, :set, :integer
    remove_column :exercises, :repetition, :integer
  end
end
