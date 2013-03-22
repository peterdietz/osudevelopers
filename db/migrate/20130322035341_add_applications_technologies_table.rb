class AddApplicationsTechnologiesTable < ActiveRecord::Migration
  def change
    create_table :applications_technologies, :id => false do |t|
      t.references :application, :null => false
      t.references :technology, :null => false
    end

    add_index :applications_technologies, [:application_id, :technology_id], :unique => true, :name => :index_applications_technologies
  end
end