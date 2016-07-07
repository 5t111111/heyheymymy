require_dependency "teaser/application_controller"

module Teaser
  class PreRegistrantsController < ApplicationController
    before_action :set_pre_registrant, only: [:show, :edit, :update, :destroy]

    # GET /pre_registrants
    def index
      @pre_registrants = PreRegistrant.all
    end

    # GET /pre_registrants/1
    def show
    end

    # GET /pre_registrants/new
    def new
      @pre_registrant = PreRegistrant.new
    end

    # GET /pre_registrants/1/edit
    def edit
    end

    # POST /pre_registrants
    def create
      @pre_registrant = PreRegistrant.new(pre_registrant_params)

      if @pre_registrant.save
        redirect_to @pre_registrant, notice: 'Pre registrant was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /pre_registrants/1
    def update
      if @pre_registrant.update(pre_registrant_params)
        redirect_to @pre_registrant, notice: 'Pre registrant was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /pre_registrants/1
    def destroy
      @pre_registrant.destroy
      redirect_to pre_registrants_url, notice: 'Pre registrant was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_pre_registrant
        @pre_registrant = PreRegistrant.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def pre_registrant_params
        params.require(:pre_registrant).permit(:name, :email)
      end
  end
end
