class Peg
    attr_accessor :a_colour

    COLOURS = ["red","blue","yellow","green","black","pink"]
    WRONGPLACE = "White"

    def initialize(a_colour)
       a_colour = check_colour(a_colour.downcase())
    end

    def check_colour(a_colour)
        unless COLOURS.include? a_colour
            puts "Incorect Colour choice. Please try again"
            a_colour2 = gets.downcase()
            puts a_colour
            self.check_colour(a_colour2)
        end
        return a_colour
    end

end