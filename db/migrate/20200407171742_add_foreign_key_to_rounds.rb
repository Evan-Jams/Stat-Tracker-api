class AddForeignKeyToRounds < ActiveRecord::Migration[6.0]
  def change
    add_column :rounds, :user_id, :integer
  end
end
