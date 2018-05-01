class UseMaterialInfosController < InheritedResources::Base

  private

    def use_material_info_params
      params.require(:use_material_info).permit(:worker_number, :worker_name, :material_name, :quantity, :use_time)
    end
end

