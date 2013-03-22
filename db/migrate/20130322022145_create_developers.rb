class CreateDevelopers < ActiveRecord::Migration
  def change
    create_table :developers do |t|
      t.string :name
      t.string :bio
      t.string :username
      t.integer :team_id
      t.string :github_username
      t.string :twitter_username

      t.timestamps
    end
  end
end
