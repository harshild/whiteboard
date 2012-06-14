module ApplicationHelper
  STANDUP_CLOSINGS = [
    "And That's The Standup",
    "STRETCH!",
    "Clap"
  ]

  def wordpress_enabled?
    !!(ENV['WORDPRESS_USER'] && ENV['WORDPRESS_PASSWORD'] && ENV['WORDPRESS_BLOG'])
  end

  def dynamic_new_item_path(opts={})
    @post ? new_post_item_path(@post, opts) : new_item_path(opts)
  end

  def standup_closing
    index = rand(STANDUP_CLOSINGS.length)
    STANDUP_CLOSINGS[index]
  end

  def pending_post_count
    Post.pending.size
  end
end
