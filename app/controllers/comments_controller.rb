class CommentsController < ApplicationController
  def new
    @comment=Comment.new
  end
  
  def create
    # ログイン中のユーザーのコメントを登録　必要なのがuser_idとtopic_idとコメント
    @comment = current_user.comments.new(comment_params)

    if @comment.save
      redirect_to topics_path, success: 'コメントしました'
    else
      flash.now[:danger] = "コメントに失敗しました"
      render :new
    end
  end
  
  
  
  private
    def comment_params
      params.require(:comment).permit(:comment,:topic_id)
    end  
  
  
end
