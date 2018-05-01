class OutQuantityInfosController < InheritedResources::Base

  private

    def out_quantity_info_params
      params.require(:out_quantity_info).permit(:no, :quantity, :out_quantity_time)
    end
end

