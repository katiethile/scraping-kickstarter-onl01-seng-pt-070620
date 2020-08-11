require "nokogiri"
require "pry"
 
def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  binding.pry
end
 
create_project_hash

# projects: kickstarter.css("li.project.grid_4") 
#This will select the first li with the project and grid_4 classes just so that we can make sure we've chosen our selectors correctly.

# projects: kickstarter.css("li.project.grid_4")
# title: project.css("h2.bbcard_name strong a").text