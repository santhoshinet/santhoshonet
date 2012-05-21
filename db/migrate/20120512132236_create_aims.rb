class CreateAims < ActiveRecord::Migration
  def self.up
    create_table :aims do |t|
      t.string :title

      t.timestamps
    end
  end

  def self.down
    drop_table :aims
  end
end
