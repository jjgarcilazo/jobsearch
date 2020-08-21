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
        puts " Do you want to search for all jobs available?"
        user_input = gets.strip.downcase
        if user_input == "yes" || user_input == "y"
            puts "please wait while we search database for available jobs"
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
            until index.between?(0,max_limit) #if not valid
                puts "sorry enter a valid number"
                quest

            end
              bun = Jobs.all[index]
                #found thier choice
                
                detailed_jobs(bun)
                
            
        end

        def contract_jobs                                                                                                                                                      
         puts "what about contract jobs?"
         user_input = gets.strip.downcase
          if user_input == "yes" || user_input == "y"
          puts "please wait while we locate availible contract jobs."
          display_contract
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
     
     
        def detailed_jobs(bun)
         # our response for full time jobs is built here 
         #it displays the jobs with certain info 
         puts bun.title
         puts bun.company
         puts bun.location
         puts bun.type
          puts bun.url
         cali   
        end
       

    # end
    def list_jobs
        Jobs.all.each.with_index(1) do |job_listing, index| 
            puts "#{index} for #{job_listing.title}"
        end
    end
  

    def display_contract
       pt = Jobs.all.find { |work| work.type == 'contract' }
        if pt.nil? 
         puts "no contract jobs available at this time sorry"
        
        else
          puts pt.title
          puts pt.company
          detail_pt

        end
        cali
         # this is the response displayed if contract jobs are being searched
            
    end
    def cali
        puts "Thanks For using Job Search CLI "
        puts " do you want to keep using CLI ?"
        user_input = gets.strip.downcase
        if user_input == "yes" || user_input == "y" 
          
          menu
        else
            exos
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
