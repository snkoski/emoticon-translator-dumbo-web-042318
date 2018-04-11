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
  if emoji_hash["get_emoticon"].include?emoji
    emoji_hash["get_emoticon"][emoji]
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(path, emoji)
  emoji_hash = load_library(path)
  if emoji_hash["get_meaning"].include?emoji
     emoji_hash["get_meaning"][emoji]
  else
    "Sorry, that emoticon was not found"
  end
  
end

load_library("./lib/emoticons.yml")