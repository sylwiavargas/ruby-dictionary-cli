# here are methods used throughout the app that pertain to the TTY::Prompt, arrays with prompts or color schemes

module CliControls

    @@prompt = TTY::Prompt.new

    # Overwriting the "yes?" method given by TTY prompt to have custom answers
    def yes_no(question_str)
        @@prompt.yes?(question_str) do |q|
        q.positive "Yes"
        q.negative "No"
        end
    end

    # A method for downcasing an ask and for foolproofing against a case when someone presses "enter" in the first screen (which results in nil)
    def down_ask(str)
        answer = @@prompt.ask(str)
        answer = "" if answer.nil?
        answer.downcase
    end

    def color_str(str, color_one, color_two)
        background_color = color_one.to_sym
        font_color = color_two.to_sym
        str.colorize(:color => font_color, :background => background_color)
    end

    $motivational_thingy = ["you're doing great!", "don't worry, you got this!", "you'll be fine!", "please take a break!", "remember: learning is always hard but you got this!", "education is messy but just code one line at a time!"].sample
    $emoji = ["✨ ", "💖 ", "🐙 "].sample
end