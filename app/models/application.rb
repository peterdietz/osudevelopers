class Application < ActiveRecord::Base
  belongs_to :team

  attr_accessible :description, :name, :status, :team_id
end
