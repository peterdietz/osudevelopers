class Department < ActiveRecord::Base
  has_many :teams, :dependent => :destroy
  attr_accessible :description, :name
end
