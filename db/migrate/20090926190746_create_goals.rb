class CreateGoals < ActiveRecord::Migration
  def self.up
    create_table :goals do |t|
      t.text :description
      t.string :action
      t.string :target
      t.string :deviation
      t.string :measure

      t.timestamps
    end
  end

  def self.down
    drop_table :goals
  end
end
