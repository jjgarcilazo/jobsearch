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
            #ask user for choice
            puts "Enter job listing number for more details "
            
            index = gets.strip.to_i - 1
            
            #validate input
            max_limit = Jobs.all.length - 1 
            if !index.between?(0,max_limit) #if not valid
                puts "sorry enter a valid number"
                quest

            else
            
                #found thier choice
                detailed_jobs
                
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
     
     
        def detailed_jobs
         # our response for full time jobs is built here 
         #it displays the jobs with certain info 
          Jobs.all.each do |work|
          puts work.title
          puts work.company
          puts work.location
          puts work.type
          puts work.url
          exos
          end
        end
       
    # end
    def list_jobs
        Jobs.all.each.with_index(1) do |job_listing, index| 
            puts "#{index} for #{job_listing.title}"
        end
    end
  

    def display_contract
       pt = Jobs.all.find { |work| work.type == "Contract" }
        puts pt.title
       
        puts pt.type
        
         # this is the response displayed if contract jobs are being searched
        cali    
    end
    def cali
        puts "do you want more details?"
        user_input = gets.strip.downcase
        if user_input == "yes" || user_input == "y" 
            puts "searching for jobs"
          pt = Jobs.all.find { |work| work.type == "Contract" }
          puts pt.title
          puts pt.type
          puts pt.company
          puts pt.location
          puts pt.url
          exos
        else
            menu
       end
    end
     
    def detail_ft
       Jobs.all.each do |detail|
            puts detail.title
            puts detail.company
            puts detail.location
            puts detail.type
            puts detail.url
            
            
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
        
        exos

       
         end
    end



    
    
end
