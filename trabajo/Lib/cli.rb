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
         quest
        
        else 
              contract_jobs    
            
        end
    end
        
    
          
                       
                    # Here we add what responses to display in order. 
        def quest
            puts "do you want a detailed view on the job listings? "
          user_input = gets.strip.downcase
          if user_input == "yes" || user_input == "y"
            detail_ft
            menu
            else
             menu 
            end 
        end                                                                                                                                                                                                                                                                                                                                                                                                                       
        def contract_jobs                                                                                                                                                      
         puts "what about contract jobs?"
         user_input = gets.strip.downcase
          if user_input == "yes" || user_input == "y"
          puts "please wait while we locate availible contract jobs."
          display_contract
          detail_pt
          menu
           else
            exos
          end 
        end 
                       
                         #this was the final user input by asking if you want to leave 
                    def exos
                         puts "would you like to exit program ?" 
                         user_input = gets.strip.downcase
                         if user_input == "yes" || user_input == "y" 

                            puts "Thank you for using Github CLI job search"
                            exit
                         else 
                             puts "you ask for too much , stay tuned for more features on new updates"
                             menu
                                
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
       Jobs.all.each do |detail|
            puts detail.title
            puts detail.company
            puts detail.location
            puts detail.type
            puts detail.url
            puts detail.description
            
        end 
    end

    def detail_pt 
        puts "Do you want more details ? "
        user_input = gets.strip.downcase
         if user_input == "yes" || user_input == "y"
         puts " Hold on you ask for too much..."
         detail_ft
        detail = Jobs.all.find { |detail| detail.type == "Contract" }
         puts detail.title
            puts detail.company
            puts detail.location
            puts detail.type
            puts detail.url
        puts detail.description
        exos

       
         end
    end



    

    
end

