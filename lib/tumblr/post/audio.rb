#TODO: Support File uploading

class Tumblr
  class Post
    class Audio < Post
      
      def initialize(post_id = nil)
        super post_id
        @type = :audio
      end
      
      parameters :externally_hosted_url, :caption, :embed, 
                 :artist, :album, :year, :track, :title,
                 :download_url
            
    end
  end
end
