# file: kickstarter_scraper.rb

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
# image link: project.css("div.project-thumbnail a img").attribute("src").value
# description: project.css("p.bbcard_blurb").text
# location: project.css("ul.project-meta span.location-name").text
# percent_funded: project.css("ul.project-stats li.first.funded strong").text.gsub("%","").to_i

def create_project_hash
  projects = {}
 
  kickstarter.css("li.project.grid_4").each do |project|
    title = project.css("h2.bbcard_name strong a").text
    projects[title.to_sym] = {}
  end
  
  projects
end