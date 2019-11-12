module Backend 
  class WebConfigurationController < BackendController
    def index
      @sliders = Slider.all
      @logos = Logo.all    
    end        
  end
end