class Api::V1::CommentsController < ApplicationController

    def index
      comments = Comment.all
      render json: comments
    end

    def show
      comment = Comment.find_by(params[:id])
      render json: comment
    end

    def create
      comment = Comment.create(comment_params)
      render json: comment
    end

    def destroy
      comment = Comment.find(params[:id])
      comment.destroy
    end

    private
      def comment_params
        params.require(:comment).permit(:content, :activity_id)
      end


end