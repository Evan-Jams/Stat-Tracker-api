class RenameHoleColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :holes, :number, :hole_number
  end
end
