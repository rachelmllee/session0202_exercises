engines = ["Google", "Bing", "Ask Jeeves"]

engines = engines.map do |e|
  if e == "Google"
    "OK"
  elsif e == "Bing"
    "Bad!"
  else
    "What is that?"
  end
end

# The return value of map is ["OK", "Bad!", "What is that?"].
# The return value of each is ["Google", "Bing", "Ask Jeeves"].