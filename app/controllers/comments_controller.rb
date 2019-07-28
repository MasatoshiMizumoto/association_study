class CommentsController < ApplicationController
  # def new
  # end

  # def index
  # end

  # def show
  # end

  def create
    # @tweet = Tweet.current_tweet.id
    # @comment = Comment.new(comment_params)
    # @comment.user_id = current_user.id
    # @comment.tweet_id = current_tweet.id
    # @comment.save
    # redirect_to comments_path
    tweet = Tweet.find(params[:tweet_id])
    comment = current_user.comments.build(comment_params)
    comment.tweet_id = tweet.id
    comment.save
    redirect_to tweet_path(tweet.id)
  end

  # def destroy
  # end

  private
    def comment_params
      params.require(:comment).permit(:body)
    end

end

