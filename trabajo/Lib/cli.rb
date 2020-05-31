class CLI

    def start
        puts "Welcome To Github Job search CLI"
        self.menu
        API.jobs
    end

    def menu
        puts " Do you want to search for full time jobs?"
        user_input = gets.strip.downcase
        if user_input == "yes" || user_input == "y"
            puts "please Wait while we search full time jobs"
            
            list_jobs
        else
            puts "what about part time jobs? "
        end
    end  
     
    def list_jobs
       Jobs.all.each.with_index(0) do |jobs_hash, index|
        puts "#{index}, #{jobs_hash}"
       end


       
    end

end

