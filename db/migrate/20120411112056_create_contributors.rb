class CreateContributors < ActiveRecord::Migration
  def self.up
    create_table :contributors do |t|
      t.string :username
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :contributors
  end
end
