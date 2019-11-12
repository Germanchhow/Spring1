module Backend
  class SlidersController < BackendController
    
    def index
      @sliders= Slider.all
    end
    
    def new
      @slider= Slider.new(slider_params)
      if @slider.save
        flash[:notice] = 'Creado'
        redirect_to backend_web_configuration_index_url
      else
        flash.now[:alert] = 'Error'
        render :new
      end  
    end

    def show
      @slider= Slider.find(params[:id])
    end

    def edit
      @slider = Slider.find(params[:id])
    end
  
    def update
      @slider = Slider.find(params[:id])
      if @slider.update(slider_params)
        flash[:notice] = 'Creado'
        redirect_to backend_web_configuration_index_url
      else
        flash.now[:alert] = 'Error'
        render :edit
      end
    end

    def create
      @slider = Slider.new(slider_params)

      if @slider.save
        flash[:notice] = 'Creado'
        redirect_to backend_web_configuration_index_url
      else
        flash.now[:alert] = 'Error'
        render :new
      end
    end

    def destroy
      @slider = Slider.find(params[:id])
      @slider.destroy
      flash[:notice] = 'Eliminado'
      redirect_to backend_web_configuration_index_url
    end

    private
    def slider_params
      params.require(:slider).permit(:name, :ImagenSlider)
    end

  end
end