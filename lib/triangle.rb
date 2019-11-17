class Triangle

  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if (@a+@b <= @c) || (@a+@c <= @b) || (@c+@b <= @a) || @a <= 0 || @b <= 0 || @c <= 0
      
      raise TriangleError
      
      # begin
      #   raise TriangleError
      # rescue TriangleError => error
      #   puts error.message
      # end
    else
      if @a == @b && @b == @c
        :equilateral
      elsif @a == @b || @a == @c || @b == @c
        :isosceles
      else
        :scalene
      end
    end
  end


  class TriangleError < StandardError
    def message
      "Invalid input"
    end
  end

end
