require 'pry'
require "nokigiri"
require "pry"
# require libraries/modules here

def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  
  kickstarter = Nokogiri::HTML(html)
  #binding.pry
end
end 

#create_project_hash