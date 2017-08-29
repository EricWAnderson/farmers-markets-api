module Api::V1
  class MarketsController < ApiController

    # GET /v1/markets
    def index
      @markets = Market.all

      @markets_addresses_hours = @markets.map do |market|
        hours = OperatingHour.where(market_id: market.id)

        {
          id: market.id,
          name: market.name,
          description: market.description,
          created_at: market.created_at,
          updated_at: market.updated_at,
          url: market.url,
          image: 'images/' + market.id.to_s + '.jpg',
          email: market.email,
          phone: market.phone,
          ebt: market.ebt,
          address: {
            street: market.street,
            unit: market.unit,
            city: market.city,
            state: market.state,
            zip: market.zip,
            latitude: market.latitude,
            longitude: market.longitude
          },
          hours: hours
        }
      end

      render json: @markets_addresses_hours
    end

  end
end
