class Triangle
  # write code here
  attr_reader :length, :length2, :length3

  def initialize(length, length2, length3)
    @length = length
    @length2 = length2
    @length3 = length3
  end

  def kind
    is_triangle
    if length == length2 && length2 == length3
      :equilateral
    elsif length == length2 || length2 == length3 || length3 == length
      :isosceles
    else
      :scalene
    end
  end

  def is_triangle
    triangle = [length + length2 > length3, length + length3 > length2, length3 + length2 > length]
      [length, length2, length3].each {|side| triangle << false if side <= 0}
       if triangle.include?(false)
        raise TriangleError
       end
    # [length, length2, length3].each do |side| 
    #   if side <= 0
    #     triangle << false
    #   elsif triangle.include?(false)
    #     raise TriangleError 
    #   end
      
    # end
    
  end


  class TriangleError < StandardError

  end

end
