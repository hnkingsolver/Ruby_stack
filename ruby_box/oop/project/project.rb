
# class Project
#     # your code here
#     @@no_of_projects = 0
#     def initialize(name, desc) #logic to get and set branch attributes   
#         @project_name = name      #setting instance variables
#         @project_desc = desc 
#         @@no_of_projects += 1 
#         puts "Created project #{@@no_of_projects}"
#     end
#     def name
#         puts "Project Name: #{@project_name}" 
#     end
#     def elevator_pitch
#         puts "Project Name: #{@project_name}" 
#         puts "Project Description: #{@project_desc}"
#     end 
# end
# project1 = Project.new("Project 1", "Description 1")
# puts project1.name # => "Project 1"
# project1.elevator_pitch  # => "Project 1, Description 1"

# hannahs_project = Project.new("Carole Baskins...A MURDERER", "Reasons why we ALL KNOW that bitch down in Florida killed her husband")
# puts hannahs_project.name 
# hannahs_project.elevator_pitch

class Project
    attr_accessor :name, :description, :owner

    def initialize name, desc
        @name = name
        @description = desc
    end

    def elevator_pitch
        puts "#{@name}, #{@description}"
    end
end

