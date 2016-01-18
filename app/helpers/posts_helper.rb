module PostsHelper
  def preview(post)
    strip_tags(post.body)
    .truncate(300, :separator => ' ')
    .gsub(/(\w)\.(\w)/, '\1. \2')
    .gsub(/&ldquo;|&rdquo;/, '"')
  end
end
