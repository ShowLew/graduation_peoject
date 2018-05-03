class WarehousesController < InheritedResources::Base

  private

    def warehouse_params
      params.require(:warehouse).permit()
    end
end

