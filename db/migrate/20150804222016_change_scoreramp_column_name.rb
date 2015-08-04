class ChangeScorerampColumnName < ActiveRecord::Migration
  def change
    rename_column :games, :scoreramp, :ramp
  end
end
