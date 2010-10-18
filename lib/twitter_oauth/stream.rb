require 'open-uri'

module TwitterOAuth
  class Client
    
    def sample
      stream_get('/sample.json')
    end

    private
    def stream_get(path)
      response = open('http://stream.twitter.com/1/statuses' + path, 'User-Agent' => 'github.com/moomerman/twitter_oauth')
      JSON.parse(response.read)
    end
  end
end
