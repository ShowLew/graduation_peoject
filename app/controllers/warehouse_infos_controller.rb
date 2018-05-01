class WarehouseInfosController < InheritedResources::Base

  private

    def warehouse_info_params
      params.require(:warehouse_info).permit(:no, :size, :fragile, :in_time, :quantity, :local)
    end
end

