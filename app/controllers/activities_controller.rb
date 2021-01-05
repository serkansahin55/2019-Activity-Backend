class Api::V1::ActivitiesController < ApplicationController

    def index
      activities = Activity.all
      render json: activities
    end

    def show
      activity = Activity.find_by(params[:id])
      render json: activity
    end

    def create
      activity = Activity.create(activity_params)
      render json: activity
    end

    def destroy
      activity = Activity.find(params[:id])
      activity.destroy
    end

    private
      def activity_params
        params.require(:activity).permit(:title, :image_url)
      end


end
