class CommentsController < InheritedResources::Base

  def create
    @comment = Comment.new(meeting_params)

     respond_to do |format|
      if @comment.save
        NotificationMailer.new_comment(@comment).deliver
        format.html { redirect_to @comment, notice: 'Comment was successfully created.' }
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { render :new }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def comment_params
      params.require(:comment).permit(:body, :user_id, :post_id)
    end
end

