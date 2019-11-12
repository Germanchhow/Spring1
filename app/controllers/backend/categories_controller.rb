module Backend
  class CategoriesController < BackendController
   def index
    @presenter = CategoriesPresenter.new(params)
   end
 
   def show
    @category = Category.find(params[:id])
   end
 
   def new
     @category = Category.new
    
   end
 
   def edit
     @category = Category.find(params[:id])
     
   end
 
   def create
     @category = Category.new(category_params)
     @category.save(category_params)
     redirect_to backend_category_path(@category)
   end
 
   def update
     @category = Category.find(params[:id])
     @category.update(category_params)
     redirect_to backend_category_path(@category)
   end
 
   def destroy
     @category = Category.find(params[:id])
     @category.destroy
     redirect_to backend_categories_path
   end
 
  private

  def category_params
    params.require(:category).permit(:name)
  end
 end
end
 