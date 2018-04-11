require 'yaml'
require 'pry'

#emojis = YAML.load_file('lib/emoticons.yml')
def load_library(library)
  yam_hash = YAML.load_file(library)
  new_hash = {"get_meaning" => {}, "get_emoticon" => {}}
  yam_hash.each do |name, emojis|
   new_hash["get_meaning"][emojis[1]] = name
   new_hash["get_emoticon"][emojis[0]] = emojis[1]
  end
 new_hash
end

def get_japanese_emoticon(path, emoji)
 emoji_hash = load_library(path)
  
end

def get_english_meaning
  # code goes here
end

load_library("./lib/emoticons.yml")