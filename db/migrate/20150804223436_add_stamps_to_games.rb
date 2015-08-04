class AddStampsToGames < ActiveRecord::Migration
  def change
    add_column :games, :stamps, :integer, array: true, default: []
  end
end
