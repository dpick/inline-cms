class CreateTextObjects < ActiveRecord::Migration
  def self.up
    create_table :text_objects do |t|
      t.string  :key
      t.text    :value

      t.timestamps
    end
  end

  def self.down
    drop_table :text_objects
  end
end
