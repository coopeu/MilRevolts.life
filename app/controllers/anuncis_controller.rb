class AnuncisController < InheritedResources::Base



  private

    def anunci_params
      params.require(:anunci).permit(:name, :title, :description)
    end
end

