require_relative("lib/blog.rb")
require_relative("lib/post.rb")

seconds_in_day = 60 * 60 * 24

the_blog = Blog.new

the_blog.add_post Post.new("First Post", Time.now - 4 * seconds_in_day, "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
the_blog.add_post Post.new("Second Post", Time.now - 3 * seconds_in_day, "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
the_blog.add_post Post.new("Third Post", Time.now - 2 * seconds_in_day, "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
the_blog.add_post Post.new("Fourth Post", Time.now - 1 * seconds_in_day, "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
the_blog.add_post Post.new("Fifth Post", Time.now, "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
the_blog.add_post Post.new("Sixth Post", Time.now, "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
the_blog.add_post Post.new("Seventh Post", Time.now, "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
the_blog.add_post Post.new("Eighth Post", Time.now, "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
the_blog.add_post Post.new("Ninth Post", Time.now, "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")

the_blog.publish_front_page