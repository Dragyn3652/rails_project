class CommentsController < ApplicationController

   def create
       @comment = Comment.new(comment_params)
   if @comment.save
    redirect_to @comment.post
   end
 end

   def destroy
      @comment = Comment.find(params[:id])
      if @comment.destroy
        redirect_to post_path(@comment.post_id)
    end
  end

   private

   def comment_params
        params.require(:comment).permit(:user_id, :post_id, :body)
   end
end
