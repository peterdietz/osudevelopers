class Developer < ActiveRecord::Base
  belongs_to :team
  attr_accessible :bio, :github_username, :name, :team_id, :twitter_username, :username
end
