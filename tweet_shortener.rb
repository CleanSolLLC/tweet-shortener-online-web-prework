require 'pry'

def dictionary

  dictionary_hash = {  "hello" => "hi",
       "to" => "2",
       "two" => "2",
       "too" => "2",
       "for" => "4",
       "four" => "4",
       "For" => "4",
       "be"  => "b",
       "you" => "u",
       "at"  => "@",
       "and" => "&"
    }
end

def word_substituter(tweet)

  dictionary_hash = dictionary
  tweet = tweet.split

  tweet_array = []
  tweet.each do |x|

    if dictionary_hash.include?(x)
      value = dictionary_hash.fetch(x)
      x = value
      tweet_array << x
    else
    tweet_array << x
    end

  end
tweet_array.join (" ")

end


def bulk_tweet_shortener(tweets)

array = tweets

array.each do |s|

puts word_substituter(s)

end

end


def selective_tweet_shortener(tweet)

    if tweet.length > 140
      word_substituter(tweet)

    else
        return tweet
  end

end

def shortened_tweet_truncator(tweet)



  if tweet.length > 140

  binding.pry

    substituttion_string = word_substituter(tweet)

      if substituttion_string.length > 140

      substituttion_string[0..139]
  else
      return tweet
end

    end
end
