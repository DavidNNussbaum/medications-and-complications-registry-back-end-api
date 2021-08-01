class ComplicationsController < ApplicationController
before_action: :set_complication, only: [:show, :update, :destroy]

    def index
        medication = Medication.find_by(id: params[:medication_id])
        @complications = medication.ComplicationsController

        render json: ComplicationsSerializer.new(@complications).serializable_hash
    end

    def show
        render json: @complication
    end

    def create
        @complication = Complication.new(complication_params)

        if @complication.save
            render json: @complication, status: :created, location: @complication
        else
            render json: @complication.errors, status: :unprocessable_entity
        end
    end

    def update
        if @complication.update(complication_params)
            render json: :@complication
        else
            render json: @complication.errors, status: :unprocessable_entity
        end
    end

    
