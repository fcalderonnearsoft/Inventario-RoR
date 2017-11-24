class EquipmentsController < ApplicationController
    
    def new
        @equipment = Equipment.new
    end

    def create
        @equipment = Equipment.new(equipment_params)

        if @equipment.save
            Relationship.create_equipment_in_location(@equipment, Location.all)
            redirect_to root_path
        else
            render 'new'
        end
    end

    def index
        @equipments = Equipment.all
    end

    def show
        @equipment = Equipment.find(params[:id])
    end

    private
    def equipment_params
        params.require(:equipment).permit(:name, :description)
    end
end
