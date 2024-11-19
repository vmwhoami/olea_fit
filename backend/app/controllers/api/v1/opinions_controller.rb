module Api
  module V1
    # implements Api::V1::OpinionsController
    class OpinionsController < ApplicationController
      before_action :logged_in?, only: %i[index show edit destoroy]
      before_action :set_opinion, only: %i[show edit update destroy]

      def index
        @fresh_opinions = Opinion.fresh_opinions.includes(:author, :likes).limit(6)
        @popular_users = User.most_followed

        @opinion = Opinion.new
        @merged_opinions = Opinion.merged_o(current_user).includes(:likes)
      end

      def discover
        @users = User.all
        @fresh_opinions = Opinion.fresh_opinions.includes(:author, :likes)
      end

      def show; end

      def new
        @opinion = Opinion.new
      end

      def edit; end

      def create
        @opinion = current_user.opinions.new(opinion_params)

        respond_to do |format|
          if @opinion.save

            format.json { render :show, status: :created, location: @opinion }
          else

            format.json { render json: @opinion.errors, status: :unprocessable_entity }
          end
        end
      end

      def update
        respond_to do |format|
          if @opinion.update(opinion_params)

            format.json { render :show, status: :ok, location: @opinion }
          else

            format.json { render json: @opinion.errors, status: :unprocessable_entity }
          end
        end
      end

      def destroy
        @opinion.destroy
        respond_to do |format|
          format.json { head :no_content }
        end
      end

      private

      def set_opinion
        @opinion = Opinion.find(params[:id])
      end

      def opinion_params
        params.require(:opinion).permit(:text)
      end
    end
  end
end
