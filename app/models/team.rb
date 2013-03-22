class Team < ActiveRecord::Base
  belongs_to :department
  has_many :developers, :dependent => :destroy


  attr_accessible :department_id, :description, :name
end
