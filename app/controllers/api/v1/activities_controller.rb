class Api::V1::ActivitiesController < ApplicationController

    def show
        activity = Activity.find(params[:id])
        render json: activity
    end

    def index
        activities = Activity.all
        render json: activities
    end

    def create
        activity = Activity.create!(activity_params)
        render json: activity
    end

    private

    def activity_params
        params.require(:activity).permit(:title, :image_url)
    end

end
