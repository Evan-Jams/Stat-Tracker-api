class CreateRounds < ActiveRecord::Migration[6.0]
  def change
    create_table :rounds do |t|
      t.string :play_date
      t.string :strokes1
      t.string :strokes2
      t.string :strokes3
      t.string :strokes4
      t.string :strokes5
      t.string :strokes6
      t.string :strokes7
      t.string :strokes8
      t.string :strokes9
      t.string :strokes10
      t.string :strokes11
      t.string :strokes12
      t.string :strokes13
      t.string :strokes14
      t.string :strokes15
      t.string :strokes16
      t.string :strokes17
      t.string :strokes18

      t.timestamps
    end
  end
end
