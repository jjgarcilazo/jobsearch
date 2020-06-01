class CLI
   #our cli program itself
    def start
        puts "Welcome To Github Job search CLI"
        API.jobs
        self.menu
        # ^  start of the program in list order
    end
           # v here we build our menu and user inputs if any
           # along with responses ,in this case we ask what type of jobs to search for
    def menu
        puts " Do you want to search for all jobs avalible?"
        user_input = gets.strip.downcase
        if user_input == "yes" || user_input == "y"
            puts "please wait while we search database for avalible jobs"
            list_jobs
         else       
            puts "what about contract jobs?"
           user_input = gets.strip.downcase
           if user_input == "yes" || user_input == "y"
             puts "please wait while we locate availible contract jobs."
             display_contract
           end
        
        end
    end  
     
    def list_jobs
        # our response for full time jobs is built here 
        #it displays the jobs with certain info 
        Jobs.all.each do |jobs_hash|
         puts jobs_hash.title
         puts jobs_hash.company
         puts jobs_hash.location
         puts jobs_hash.type
         puts jobs_hash.url
        end
       
    end
    
  

    def display_contract
       pt = Jobs.all.find { |jobs_hash| jobs_hash.type == "Contract" }
        puts pt.title
        puts pt.company
        puts pt.location
        puts pt.type
        puts pt.url
         # this is the response displayed if contract jobs are being searched
         
    end

    

    
end

