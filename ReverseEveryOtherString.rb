#https://www.codewars.com/kata/reverse-every-other-word-in-the-string/train/ruby


def reverse_alternate(string)
  arr = string.split(" ")
  arr.map!.with_index {|i, n| (n+1)%2 == 0? i.reverse : i}
  puts arr.join(" ")
end
  
def reverse_alternate(string)
  arr = string.split(" ")
  (1..arr.length - 1).step(2) {|i| arr[i].replace(arr[i].reverse)}   
  arr.join(" ")
end

string = "I really hope it works this time..."
reverse_alternate(string)