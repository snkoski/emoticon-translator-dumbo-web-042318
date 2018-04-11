require 'yaml'
require 'pry'

#emojis = YAML.load_file('lib/emoticons.yml')
def load_library(library)
  yam_hash = YAML.load_file(library)
  
  new_hash = {"get_meaning" => {}, "get_emoticon" => {}}
  
  yam_hash.each do |name, emojis|
   new_hash["get_meaning"][emojis[1]] = name
   # binding.pry
  end

  binding.pry
  new_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

load_library("./lib/emoticons.yml")