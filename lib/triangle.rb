class Triangle
  def initialize(left, right, bottom)
    @left = left
    @right = right
    @bottom = bottom
  end
  
  def kind
    if @left <= 0 || @right <= 0 || @bottom <= 0
      raise TriangleError
    elsif @left + @right <= @bottom || @right + @bottom <= @left || @bottom + @left <= @right
      raise TriangleError
    elsif @left == @right && @right == @bottom && @bottom == @left
      :equilateral
    elsif @left == @right || @right == @bottom || @bottom == @left
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "Test!"
    end
  end
end
