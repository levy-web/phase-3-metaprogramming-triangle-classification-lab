class Triangle
  # write code here
  attr_accessor :one, :two, :three

  def initialize(one, two, three)
    if one>0 && two>0 && three>0 && one+two >three && one+three>two && two+three>one
      
      @one = one
      @two = two
      @three = three
    else
      raise TriangleError
    end

  end

  def kind
    if self.one == self.two && self.two == self.three
      :equilateral
    elsif (self.one == self.two && self.two != self.three) || self.one == self.three && self.three != self.two || self.two == self.three && self.two != self.one
      :isosceles 

    else
      :scalene
    end
  end

  class TriangleError < StandardError
    # triangle error code
    puts "wtf"
  end

end

tri = Triangle.new(9,2,9)
tri.kind
