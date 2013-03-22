class Team < ActiveRecord::Base
  belongs_to :department



  attr_accessible :department_id, :description, :name
end
