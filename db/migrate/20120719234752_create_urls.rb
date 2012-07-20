class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :long_url, :unique => true, :null => false
      t.string :appendage, :unique => true, :null => false

      t.timestamps
    end
  end
end
