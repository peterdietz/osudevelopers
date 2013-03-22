class Developer < ActiveRecord::Base
  attr_accessible :bio, :github_username, :name, :team_id, :twitter_username, :username
end
