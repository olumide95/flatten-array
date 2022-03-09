def flatten(input)
  return input if !input.kind_of?(Array)

  return input if input.empty? 
  
  result = []
  
  return result
end


def assert_equal(expected, actual)
  if expected != actual
    puts "Expected: #{expected.inspect}, got: #{actual.inspect}"
    exit 1
  end
end

assert_equal 1, flatten(1)

assert_equal [], flatten([])

assert_equal({}, flatten({}))

assert_equal ['1', '2', '3', '4', '5', '6', '7'], flatten([ '1', [ '2', ['3', ['4', ['5']], '6'] ], '7' ])

assert_equal [1, 2, 3, 4, 5, 6, 7], flatten([ 1, [ 2, [3, [4, [5]], 6] ], 7 ])

assert_equal [1, 2, 3, 4, 5, {f: 1}, 7], flatten([ 1, [ 2, [3, [4, [5]], {f: 1}] ], 7 ])
