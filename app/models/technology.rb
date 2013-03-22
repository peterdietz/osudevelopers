class Technology < ActiveRecord::Base
  has_and_belongs_to_many :applications

  attr_accessible :description, :name, :website
end