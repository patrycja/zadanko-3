class CreateSubjects < ActiveRecord::Migration
  def self.up
    create_table :subjects do |t|
      t.string :name, :null => false
    end
	Subject.create :name => "Informatyka"
    Subject.create :name => "Matematyka"
    Subject.create :name => "Fantastyka"
    Subject.create :name => "Historia"
    Subject.create :name => "Sensacja"
	Subject.create :name => "Filozofia"
	Subject.create :name => "Romans"
  end

  def self.down
    drop_table :subjects
  end
end