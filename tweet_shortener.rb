def dictionary
dictionary = {
  "hello" => "hi",
  "to" => "2",
  "for" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&",
  "two" => "2",
  "too" => "2",
  "four" => "4"
  
}
end

def word_substituter(tweet)
tweet.split.collect do |word|
  if dictionary.keys.include?(word.downcase)
    word = dictionary[word.downcase]
  else
    word
  end
end.join(" ")
end

def bulk_tweet_shortener(tweet)
  tweet.each do |term|
    puts word_substituter(term)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end
