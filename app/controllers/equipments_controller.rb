class EquipmentsController < ApplicationController
    
    def new
        equipment = Equipment.new
        render :new, locals: { equipment: equipment }
    end

    def create
        equipment = Equipment.new(equipment_params)

        if equipment.save
            Relationship.create_equipment_in_location(equipment, Location.all)
            redirect_to root_path
        else
            render 'new'
        end
    end

    def index
        equipments = Equipment.all
        render :index, locals: { equipments: equipments }
    end

    def show
        equipment = Equipment.find(params[:id])
        render :show, locals: { equipment: equipment }
    end

    private
    def equipment_params
        params.require(:equipment).permit(:name, :description)
    end
end
