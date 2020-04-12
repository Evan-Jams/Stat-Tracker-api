class RemoveColumnFromHoles < ActiveRecord::Migration[6.0]
  def change
    remove_column :holes, :round_id
  end
end
