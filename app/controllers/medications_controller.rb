class MedicationsController < ApplicationController
    before_action :set_medication, only: [:show, :update, :destroy]
    skip_before_action :authorized, only: [:create, :index]

    def index 
        @medications = Medication.order_by_name_strength
        render json: MedicationSerializer.new(@medications).serializable_hash 
    end

    def show
        render json: MedicationSerializer.new(@medication).serializable_hash
    end

    def create
        @medication = Medication.new(medication_params)
        if @medication.save
            render json:  MedicationSerializer.new(@medication).serializable_hash, status: :created 
        else
            render json: { error: @medication.errors.full_messages.to_sentence}, status: :unprocessable_entity
        end
    end

    private
        def set_medication
            @medication = Medication.find(params[:id])
        end

        def medication_params
            params.require(:medication).permit(:name_strength, :frequency, :administration_route)
        end

end

         