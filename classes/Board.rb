class Board
  require './classes/Row'

  attr_accessor :row_arry

  def initialize
    @row_arry = Array.new(12, Row.new)
  end
end
