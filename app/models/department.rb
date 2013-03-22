class Department < ActiveRecord::Base
  has_many :teams, :dependent => :destroy
  attr_accessible :description, :name

  def developers_within_department
    devs = 0
    teams.find_each do |team|
      devs += team.developers.count
    end

    return devs
  end
end
