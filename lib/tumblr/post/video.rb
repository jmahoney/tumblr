#TODO: Support file uploading

class Tumblr
  class Post
    class Video < Post
      
      def initialize(video, post_id = nil)
        super post_id
        video = video.send(video.respond_to?(:lines) ? :lines : :to_s).to_a.map.to_a
        self.embed = video.shift.strip
        self.caption = video.join
        @type = :video
      end
      
      parameters :caption, :embed
            
    end
  end
end