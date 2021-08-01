class MedicationsController < ApplicationController
    before_action :set_medication, only: [:show, :update, :destroy]

    def index 
        @medication = Medication.order_by_name
    end

    def show
        
    end

    def create
        @medication = Medication.new(medication_params)

        if @medication.save
            render json: @medication, status: :created, location: @medication
        else
            render json: @medication.errors, status: :unprocessable_entity
        end
    end

    private
        def set_medication
            @medication = Medication.find(params[:id])
        end

        def medication_params
            params.require(:medication).permit(:name_strength, :frequency, :administration_route)
        end