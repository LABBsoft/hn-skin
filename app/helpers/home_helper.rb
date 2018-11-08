require 'date'
module HomeHelper
    def getStoryIds(type)
        @response = HTTP.get('https://hacker-news.firebaseio.com/v0/' + type + 'stories.json')
        @ids = JSON.parse(@response)
        @items = []
        @ids[0..24].each do |item|
          @items << getItem(item)
        end    
    end
    def getItem(id)
        @response = HTTP.get('https://hacker-news.firebaseio.com/v0/item/' + id.to_s + '.json')
        if @response.code != 200
            puts("Bad response @" + id)
            return nil
        end
        return JSON.parse(@response.to_s)
    end
    def parseTime(time)
        return Time.at(time).to_datetime.strftime("%k:%M %d/%m/%Y")
    end
end