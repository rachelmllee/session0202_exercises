# finding_things.rb

def index_of(string, letter)
  result = -1
  string.split("").each_with_index do |character, index|
    if character.downcase == letter.downcase
       result = index
    end
  end
  result
end

def find_by_name(list_of_names, name_to_find)
  index_exists = false
  index = 0
  list_of_names.each_with_index do |array, index_of_array|
    if array[:name] == name_to_find && !index_exists
      index = index_of_array
      index_exists = true
    end
  end
  if index_exists
    list_of_names[index]
  else
    nil
  end
end

def filter_by_name(list_of_names, name_to_find)
  array_result = []
  list_of_names.each do |array|
    if array[:name] == name_to_find
      array_result << array
    end
  end
  array_result
end

index_of("abcdefghijklmnop", "m")
# => 12
index_of("abcdefghijklmnop", "z")
# => -1

people = [
  {
    :id => 1,
    :name => "bru"
  },
  {
    :id => 2,
    :name => "ski"
  },
  {
    :id => 3,
    :name => "brunette"
  },
  {
    :id => 4,
    :name => "ski"
  }
]
find_by_name(people, "ski")
# => {:id=>2,:name=>"ski"}
find_by_name(people, "kitten!")
# => nil
filter_by_name(people, "ski")
# => [{:id=>2,:name=>"ski"}, {:id=>4,:name=>"ski"}]
filter_by_name(people, "bru")
# => [{:id=>1,:name=>"bru"}] (Note this is still an array)
filter_by_name(people, "puppy!!!")
# => []