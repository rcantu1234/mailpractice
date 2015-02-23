class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  def post_author_email
    post.user.email
  end
end
