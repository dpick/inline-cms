class CreateImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.string :original
      t.string :small_thumbnail
      t.string :large_thumbnail
      t.string :delete_url

      t.timestamps
    end
  end

  def self.down
    drop_table :images
  end
end
