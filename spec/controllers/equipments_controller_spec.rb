require 'rails_helper'

RSpec.describe EquipmentsController, type: :controller do
    describe "#new" do
        it "should render new template" do
            sign_in
            get :new
            expect(response).to render_template(:new)
        end
    end

    describe "#index" do
        it "should render index template" do
            sign_in
            get :index
            expect(response).to render_template(:index)
        end
    end

    describe "#show" do
        it "should render show template" do
            sign_in
            equipment = Equipment.first
            get :show, params: { id: equipment.id }
            expect(response).to render_template(:show)
        end
    end

    describe "#create" do
        it "should create new equipment" do
            sign_in
            post :create, params: { equipment: { name: "TestName", description: "Test description" } }
            equipment = Equipment.where(name: "TestName", description: "Test description")
            expect(equipment).not_to be_nil
            relationship = Relationship.where(equipment_id: equipment[0].id)
            expect(relationship).not_to be_nil
        end
    end

    describe "#edit" do
        it "should render edit template" do
            sign_in
            equipment = Equipment.first
            get :edit, params: { id: equipment.id }
            expect(response).to render_template(:edit)
        end
    end

    describe "#update" do
        it "should update equipment" do
            sign_in
            equipment = Equipment.first
            post :update, params: { id: equipment.id, equipment: { name: "Name Updated", description: "Description updated" } }
            equipment = Equipment.find(equipment.id)
            expect(equipment.name).to eq("Name Updated")
            expect(equipment.description).to eq("Description updated")
        end
    end

    describe "#destroy" do
        it "should delete equipment" do
            sign_in
            equipment = Equipment.first
            post :destroy, params: { id: equipment.id }
            equipment = Equipment.find_by(id: equipment.id)
            expect(equipment).to be_nil
        end
    end
end
