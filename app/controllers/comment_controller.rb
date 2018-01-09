class CommentController < ApplicationController


  def create
    @product = Product.find(params[:product_id])
    @comment = @product.comments.new(comment_params)
    @comment.user = current_user
    @user = current_user

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @product, notice: 'Review was created successfully.' }
        format.json { render :show, status: :created, location: @product }
        @comments = Comment.where('product_id = ?', params[:product_id]).order(created_at: :desc).paginate(page: params[:page], per_page: 4)
        format.js
      else
        format.html { redirect_to @product, alert: @comment.errors.full_messages}
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    authorize! :destroy,  @comment
    @comment = Comment.find(params[:id])
    product = @comment.product
    @comment.destroy
    redirect_to product
  end

  private

  def comment_params
    params.require(:comment).permit(:user_id, :body, :rating)
  end

end
