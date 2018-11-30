class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]



  def index
  @categories = Category.all

  if params[:categoria].blank? #    || Post.where(category_id: @categoria_id).count == 0
  @posts = Post.all.order("created_at DESC")
  else  
  @categoria_id = Category.find_by(name: params[:categoria]).id
  @posts = Post.where(category_id: @categoria_id).order("created_at DESC")
  end


  end

  def show
    @comments = @post.comments.all
    @comment = @post.comments.build
  end

  def new
    @post = Post.new
#    @categories = Category.all.map{ |cat| cat.name, cat.id.to_s }
    @comments = Comment.all
    @categories =Category.all
    @comment = Comment.new(post_id: params[:post_id])
  end

  def edit
    @post.category_id = params[:category_id]
    @categories =Category.all
  end

  def create
    @categories = Category.all
#    @post = Post.friendly.find(params[:id])
    @post = Post.new(post_params.merge(user_id: current_user.id))

#    respond_with Post.create(post_params.merge(user_id: current_user.id))
    #post_params.merge(user_id: current_user.id))


    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'L\'Article ha sigut ben creat.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
#    @post = Post.friendly.find(params[:id])
    @post.category_id = params[:category_id]
    
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def find_post
      @post = Post.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:id, :name, :title, :foto, :content, :user_id, :category_id, :page, images: [] )
    end
end
