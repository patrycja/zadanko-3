class CreateBooks < ActiveRecord::Migration
  def self.up
    create_table :books do |t|
	   t.string :title, :null => false
	   t.float :price
	   t.integer :subject_id
	   t.text :description
    end
  end

  def self.down
    drop_table :books
  end
end