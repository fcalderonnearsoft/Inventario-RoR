class RelationshipsController < ApplicationController
    def create
            params[:relationship][0].each do |param| 
                relationship = Relationship.find(param[8..param.length])
                relationship.update(quantity: params[:relationship][0][param]) if !!params[:relationship][0][param] && !params[:relationship][0][param].empty?
        end
        redirect_to root_path
    end
end
