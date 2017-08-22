module Api::V1
  class MarketsController < ApiController

    # GET /v1/markets
    def index
      @markets = Market.all

      @markets_addresses_hours = @markets.map do |market|
        address = Address.where(addressable_type: 'Market', addressable_id: market.id).first
        hours = OperatingHour.where(market_id: market.id)

        {
          id: market.id,
          name: market.name,
          description: market.description,
          created_at: market.created_at,
          updated_at: market.updated_at,
          url: market.url,
          image: 'http://localhost:3000/images/' + market.id.to_s + '.jpg',
          email: market.email,
          phone: market.phone,
          ebt: market.ebt,
          address: {
            street: address.street,
            unit: address.unit,
            city: address.city,
            state: address.state,
            zip: address.zip,
            latitude: address.latitude,
            longitude: address.longitude
          },
          hours: hours
        }
      end

      render json: @markets_addresses_hours
    end

  end
end
