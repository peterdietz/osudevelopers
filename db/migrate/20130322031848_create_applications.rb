class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :name
      t.string :description
      t.integer :team_id
      t.string :status

      t.timestamps
    end
  end
end
