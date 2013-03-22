class Application < ActiveRecord::Base
  attr_accessible :description, :name, :status, :team_id
end
