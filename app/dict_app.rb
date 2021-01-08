# logic for the CLI 

class DictApp
    include CliControls

    def run
        welcome
        word_prompt
    end

    def welcome
        system 'clear'
        sleep(0.5)
        puts "    
          ______ ______
        _/      Y      \_
       // ~~ ~~ | ~~ ~  \\
      // ~ ~ ~~ | ~~~ ~~ \\      " + color_str(" Welcome to ", "yellow", "black") + "
     //________.|.________\\     " + color_str(" Phase 1 Tech Dictionary ", "yellow", "black") + "
    `----------`-'----------"
        sleep(1.1)
    end

    def see_all_words
        puts "\n\n\n\n\n"
        puts "Here are all the words available:"
        sleep(0.5)
        Word.print_all_words
        wanna_continue
    end

    def word_prompt
        puts "\n"
        puts color_str(" What definition are you looking for? ", "cyan", "black")
        word_request = down_ask("write 'all' if you want to see all words with their definitions:".colorize(:light_grey))
        sleep(0.1)
        get_definitions(word_request)
    end

    def get_definitions(word_request)
        return word_not_available(word_request) if word_request.empty?     
        puts "\n\n\n\n\n"
        # get all words or find a word that contains word_request
        if word_request.include?("all") 
            self.see_all_words 
        else  
            print_the_results(word_request)
        end
    end

    def print_the_results(word_request)
        words_arr = Word.get_the_words(word_request)

        return word_not_available(word_request) if words_arr.empty?

        puts "here's what I found for " + 
        color_str(word_request, "yellow", "red") + ":"
        puts "\n"

        words_arr.each(&:print_name_and_defs)

        wanna_continue
    end

    def word_not_available(word_request)
        puts "sorry, " + color_str(word_request, "white", "red") + color_str("does not have a definition yet", "white", "red")
        wanna_continue
    end

    def wanna_continue
        answer = yes_no("\nWanna check another word?")
        answer ? word_prompt : goodbye
    end

    def goodbye
        puts "\n"
        puts "            " + $motivational_thingy
        puts "\n"
        sleep(1.1)
        puts "#{$emoji}"*100 + " bye bye #{$emoji} #{$emoji} #{$emoji}"
        system 'exit'
      end
end
