class CreateCheckIns < ActiveRecord::Migration
  def self.up
    create_table :check_ins do |t|
      t.datetime :indate
      t.datetime :enddate
      t.string :status	  
      t.references :assignments
      t.references :teachers
      t.timestamps
    end
  end
  def self.down
    drop_table :check_ins
  end
end
