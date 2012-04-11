# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

["SharePoint","MS Project Server", "JQuery", "Ruby On Rails","Ruby", "Miscellaneous"].each do|category|
  @category = Category.new
  @category.name = category
  @category.save
end

@contributor = Contributor.new
@contributor.username = "Santhosh PS"
@contributor.email = "santhoshonet@gmail.com"
@contributor.save

