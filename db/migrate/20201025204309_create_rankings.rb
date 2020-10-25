class CreateRankings < ActiveRecord::Migration[6.0]
  def change
    create_table :rankings do |t|
      t.string :uuid
      t.string :name
      t.float :points

      t.timestamps
    end
  end
end
