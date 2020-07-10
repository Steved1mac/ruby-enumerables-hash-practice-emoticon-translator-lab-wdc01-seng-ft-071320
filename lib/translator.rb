require 'yaml'
require 'pry'



def load_library(file)
  emoticons = YAML.load_file(file)
  new_hash = {}
  emoticons.each do |key, value|
  new_hash[key] = {:english=> value[0], :japanese=> value[1]}
  
end
new_hash
end

def get_japanese_emoticon(path, emoticon)
       emoticons = load_library(path)
       emoticons.each do |key, value|
         binding.pry
            if emoticons[[value] ==  emoticon
           return key
         end 
      
         binding.pry 
       end 
  result = emoticons["get_japanese_emoticon"][emoticons]
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end 


def get_english_meaning(path, emoticon)
     library = load_library(path)
     library.each do | key, value |
         if library[key][:japanese] ==  emoticon
           return key
        end 
   end 
     
     
      #result = emoticon["get_english_meaning"][library]
  #binding.pry 
  #emoticon["wink"][:japanese]
  #binding.pry
  #if result
  ## else
 "Sorry, that emoticon was not found"
 # end
 end
 
