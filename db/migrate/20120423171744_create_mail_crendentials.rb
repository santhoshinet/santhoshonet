class CreateMailCrendentials < ActiveRecord::Migration
  def self.up
    create_table :mail_crendentials do |t|
      t.string :username
      t.string :password
      t.timestamps
    end
  end

  def self.down
    drop_table :mail_crendentials
  end
end
