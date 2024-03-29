# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  begin
    sides = [a, b, c].sort
   if sides.any? { |side| side <= 0 }
    raise TriangleError, "Sides must be greater than 0"
   end

   unless (sides[0] + sides[1] > sides[2])
    raise TriangleError, "Not valid triangle construct"
   end
  end
  
  if a == b && b == c
      return :equilateral
    elsif a == b || b == c || a == c
      return :isosceles
    else
      return :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
