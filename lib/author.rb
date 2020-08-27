require 'pry'

class Author

    attr_accessor :name, :posts

    @@post_count = 1

    def initialize(name)
        @name = name
        @posts = []
    end

    def posts
        @posts
    end

    def add_post(post)
        @posts << post
        post.author = self
        @@post_count += 1
    end

    def add_post_by_title(title)
        post = Post.new(title)
        post.author = self
        @posts << post
        @@post_count += 1
    end

    def self.post_count
        @@post_count
        # unsure why I get expected 3, got 2. Only incremented twice?
    end

end