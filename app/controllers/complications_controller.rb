class ComplicationsController < ApplicationController
before_action :set_complication, only: [:show, :update, :destroy]

    def index
        medication = Medication.find_by(id: params[:medication_id])
        @complications = medication.complications

        render json: ComplicationSerializer.new(@complications).serializable_hash
    end

    def show
        render json: ComplicationSerializer.new(@complication).serializable_hash
    end

    def create
        @complication = Complication.new(complication_params)

        if @complication.save
            render json:  ComplicationSerializer.new(@complicationgit add .assert_Qundef).serializable_hash, status: :created 
        else
          byebug
            render json: @complication.errors, status: :unprocessable_entity
        end
    end

    def update
        if @complication.update(complication_params)
            render json: ComplicationSerializer.new(@complication).serializable_hash
        else
            render json: @complication.errors, status: :unprocessable_entity
        end
    end

    def destroy
        if @complication.destroy
          render json: {message: "Complication successfully removed"}
        else
          render json: {message: "Something went wrong! Errors: #{@complication.errors.full_messages}"}
        end
      end
    
      private
         
        def set_complication
          @complication = Complication.find(params[:id])
        end
    
         
        def complication_params
          params.require(:complication).permit(:complication_severity, :complication_duration, :complication_description, :completely_resolved, :medication_id, :user_id )
        end
    end

     

    
