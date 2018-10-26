class AddColumnInTrainigns < ActiveRecord::Migration[5.1]
  def change
    add_column :trainings, :set, :integer
    add_column :trainings, :repetition, :integer
  end
end
