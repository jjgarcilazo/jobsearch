class CLI
   #our cli program itself
    def start
        puts "Welcome To Github Job search CLI"
        API.jobs
        self.menu
          

        # ^  start of the program in list order
    end
           # v here we build our menu and user inputs if any
           # along with responses ; in this case we ask what type of jobs to search for
    def menu
        puts " Do you want to search for all jobs avalible?"
        user_input = gets.strip.downcase
        if user_input == "yes" || user_input == "y"
         puts "please wait while we search database for avalible jobs"
         list_jobs
          puts "do you want a detailed view on the job listings? "
            user_input = gets.strip.downcase
            if user_input == "yes" || user_input == "y"
              detail_ft
              start
              
            else
              puts "What about contract jobs ?"
               user_input = gets.strip.downcase
                if user_input == "yes" || user_input == "y" 
                  puts display_contract
                  puts "do you want details?"
                  user_input = gets.strip.downcase
                  user_input == "yes" || user_input == "y"
                   detail_pt
                   start
                 
                   
                    # Here we add what responses to display in order.                                                                                                                                                                                                                                                                                                                                                                                                                       
                else                                                                                                                                            else          
                 puts "what about contract jobs?"
                 user_input = gets.strip.downcase
                    if user_input == "yes" || user_input == "y"
                      puts "please wait while we locate availible contract jobs."
                      display_contract
                      start  
                       
                         #this was the final user input by asking if you want to leave 
                    else 
                         puts "would you like to exit program ?" 
                         user_input = gets.strip.downcase
                         if user_input == "yes" || user_input == "y" 
                            puts "Thank you for using Github CLI job search"
                         end
                    end
                end 

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
     
    def detail_ft
        Jobs.all.each do |jobs_hash|
            puts jobs_hash.title
            puts jobs_hash.company
            puts jobs_hash.location
            puts jobs_hash.type
            puts jobs_hash.url
            puts jobs_hash.description
        end 
    end

    def detail_pt 
        pt = Jobs.all.find { |jobs_hash| jobs_hash.type == "Contract" }
        puts pt.title
        puts pt.company
        puts pt.location
        puts pt.type
        puts pt.url
        puts pt.description
    end



    

    
end

