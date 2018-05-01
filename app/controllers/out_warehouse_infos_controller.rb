class OutWarehouseInfosController < InheritedResources::Base

  private

    def out_warehouse_info_params
      params.require(:out_warehouse_info).permit(:out_no, :out_address, :buyer_phone, :out_time, :finish, :buyer_name)
    end
end

