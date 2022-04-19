def fix_the_string(str)
  # we can use an array to stand in for a stack, or implement a stack class
  stack = []

  # Iterate through the string, adding the "good" characters to the stack
  str.each_char do |char|
    if !stack.empty? && char != stack.last && char.upcase == stack.last.upcase
      stack.pop
    else
      stack.push(char)
    end
  end

  # Pop each element off the stack and add it to the result string
  result = ''
  result = stack.pop + result until stack.empty?

  result
end