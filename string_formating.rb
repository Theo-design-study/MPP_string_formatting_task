string = "In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income."

string = string.downcase.split(/[^[[:word:]'-]]+/)

MY_HASH = Hash.new()
for w in string do
    if !MY_HASH.include?(w)
        MY_HASH[w] = string.count(w)
    end
end

my_array = MY_HASH.sort_by {|k, v| v}.reverse.to_h.keys
print my_array[0..2]
