class RelationshipsController < ApplicationController
    def create
        relationship = nil
            params[:relationship][0].each do |param| 
                relationship = Relationship.find(param[8..param.length])
                relationship.update(quantity: params[:relationship][0][param]) if !!params[:relationship][0][param] && !params[:relationship][0][param].empty?
        end
        equipment = Equipment.find(relationship.equipment_id)
        redirect_to equipment, notice: true
    end
end
