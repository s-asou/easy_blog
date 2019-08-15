# frozen_string_literal: true

# Class of blog comment controller
class CommentsController < ApplicationController
  http_basic_authenticate_with name: 'dhh', password: 'secret', only: :destroy

  rescue_from ActiveRecord::RecordNotFound, with: :redirect_to_home

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article)
  end

  private

  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end

  def redirect_to_home
    redirect_to articles_path, alert: 'Comment not found.'
  end
end
