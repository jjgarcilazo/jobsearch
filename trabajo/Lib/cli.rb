class CLI

    def start
        puts "Welcome To Github Job search CLI"
        API.jobs
        self.menu
        
    end

    def menu
        puts " Do you want to search for all jobs avalible?"
        user_input = gets.strip.downcase
        if user_input == "yes" || user_input == "y"
            puts "please wait while we search database for avalible jobs"
            list_jobs
        ifelse
            puts "what about contract jobs? "
           user_input = gets.strip.downcase
           if user_input == "yes" || user_input = "y"
            puts "please wait while we locate avalible contract jobs."
            display_contract
        end
    end  
     
    def list_jobs
       Jobs.all.each do |jobs_hash|
        puts jobs_hash.title
        puts jobs_hash.company
        puts jobs_hash.location
        puts jobs_hash.type
        puts jobs_hash.url
       end
    end

    def display_contract
        Jobs.all.each.with index (8) do |jobs_hash , index|
         puts "#{index}. #{jobs_hash}"
        end
    end
end

