module Backend 
  class UsersController < BackendController
    def index
      @users= User.all
    end
    
    def new
      @user= User.new(user_params)
      if @user.save
        flash[:notice] = 'Creado'
        redirect_to backend_users_url
      else
        flash.now[:alert] = 'Error'
        render :new
      end  
    end

    def show
      @user= User.find(params[:id])
    end

    def edit
      @user = User.find(params[:id])
    end
  
    def update
      @user = User.find(params[:id])
      if @user.update(user_params)
        flash[:notice] = 'Creado'
        redirect_to backend_users_url
      else
        flash.now[:alert] = 'Error'
        render :edit
      end
    end

    def create
      @user = User.new(user_params)

      if @user.save
        flash[:notice] = 'Creado'
        redirect_to backend_users_url
      else
        flash.now[:alert] = 'Error'
        render :new
      end
    end

    def destroy
      @user = User.find(params[:id])
      @user.destroy
      flash[:notice] = 'Eliminado'
      redirect_to backend_users_url
    end

    private
    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation )
    end
  end
end
