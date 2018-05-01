class MaterialInfosController < InheritedResources::Base

  private

    def material_info_params
      params.require(:material_info).permit(:material_name, :quantity, :local, :supplier_name, :supplier_phone, :latest_time)
    end
end

