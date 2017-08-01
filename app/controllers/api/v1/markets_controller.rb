module Api::V1
  class MarketsController < ApiController

    # GET /v1/markets
    def index
      render json: Market.all
    end

  end
end
