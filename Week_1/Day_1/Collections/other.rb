#Other collection methods to know:

# Practice .each with index (i) 

# Select: 
# select is good for getting rid of an item
# will give you all items that match (in this case, all the odd numbers in your array)
[5,2,3].select {|x| x.odd?}

#Find:
#more efficient than .each for retrieving a specific item from an array
# will only give you the first matching item
[5,2,3].find {|x| x.odd?}

#Sort:
#will sort array based on default sorting method
#for numbers: ascending order
#for strings: alphabetical order, with capital letters before downcase
[1,3,2].sort 

#.sort_by 
#tell it which property to sort by
#if you create your own Class, Ruby has no default sorting method,
#so you must tell Ruby how to sort it
[banana, rice, anchovies].sort_by {|i| i.price}

#The Enumberable Module provides all the useful collection methods.

# RECAP:
# You can use each for pretty much every task you have to do with arrays.
# You can use map to transform all the items in an array to get a new one.
# You can use reduce to accumulate a single value from all the items.
# You can use select to remove items from an array easily.
# You can use find to pick out a single item in an array.
# You can use sort to change the order of an array.
