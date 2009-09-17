class CreateWizards < ActiveRecord::Migration
  def self.up
    create_table :wizards do |t|
			t.string :title
      t.string :state

      t.timestamps
    end
  end

  def self.down
    drop_table :wizards
  end
end
