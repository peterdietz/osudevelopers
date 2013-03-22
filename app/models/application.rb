class Application < ActiveRecord::Base
  has_and_belongs_to_many :technologies
  belongs_to :team

  accepts_nested_attributes_for :technologies

  attr_accessible :description, :name, :status, :team_id, :technology_ids
end
