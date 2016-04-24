
["SharePoint","MS Project Server", "JQuery", "Ruby On Rails","Ruby", "Miscellaneous"].each do|category|
  @category = Category.new
  @category.name = category
  @category.save
end

@contributor = Contributor.new
@contributor.username = "Santhosh PS"
@contributor.email = "santhoshonet@gmail.com"
@contributor.save

aim = Aim.new
aim.title = "The more you know, the better you can solve the problem."
aim.save

#@mail_config = MailCrendential.new
#@mail_config.username = "santhoshonet@gmail.com"
#@mail_config.save


