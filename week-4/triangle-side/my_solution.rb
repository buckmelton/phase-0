# I worked on this challenge [by myself, with: ].


# Your Solution Below

def valid_triangle?(a, b, c)
  return (a + b > c) && (b + c > a) && (c + a > b)
end