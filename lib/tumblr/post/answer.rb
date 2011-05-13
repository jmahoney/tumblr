class Tumblr
  class Post
    class Answer < Post
      
      def initialize(post_id = nil)
        super post_id
        @type = :answer
      end
      
      parameters :answer, :question

    end
  end
end
