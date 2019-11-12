module Backend
  class TagsController < BackendController
   def index
    @presenter = TagsPresenter.new(params)    
   end
 
   def show
    @tag = Tag.find(params[:id])
   end
 
   def new
     @tag = Tag.new
   end
 
   def edit
     @tag = Tag.find(params[:id])
     
   end
 
   def create
     @tag = Tag.new(tag_params)
     @tag.save(tag_params)
     redirect_to backend_tag_path(@tag)
   end
 
   def update
     @tag = Tag.find(params[:id])
     @tag.update(tag_params)
     redirect_to backend_tag_path(@tag)
   end
 
   def destroy
     @tag = Tag.find(params[:id])
     @tag.destroy
     redirect_to backend_tags_path
   end
   private
 
   def tag_params
     params.require(:tag).permit(:name)
   end
   
  end
 end
