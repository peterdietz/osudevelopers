# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

libraries = Department.find_or_create_by_name(:name => 'University Libraries')
ocio = Department.find_or_create_by_name(:name => 'OCIO')
asc = Department.find_or_create_by_name(:name => 'Arts & Sciences')

ads = Team.find_or_create_by_name(:name => 'Application Development & Support')
ads.department = libraries
ads.save

peter = Developer.find_or_create_by_username(:username => 'dietz.72')
peter.name = 'Peter Dietz'
peter.team = ads
peter.github_username = 'peterdietz'
peter.twitter_username = 'kompewter'
peter.save


rails = Technology.find_or_create_by_name(:name => 'Ruby on Rails')
php = Technology.find_or_create_by_name(:name => 'PHP')
java = Technology.find_or_create_by_name(:name => 'Java')

kb = Application.find_or_create_by_name(:name => 'Knowledge Bank')
kbtech = kb.technologies
if kbtech.count == 0
  kb.technologies << java
end
kb.team = ads
kb.status = 'active'
kb.save