describe "Markets API" do
  it 'returns a list of markets' do
    FactoryGirl.create_list(:market, 10)

    get '/api/v1/markets'

    json = JSON.parse(response.body)

    # test for the 200 status-code
    expect(response).to be_success

    # check to make sure the right amount of messages are returned
    expect(json.length).to eq(10)
  end

  it 'includes all the attributes' do
    market = FactoryGirl.create(:market)

    get '/api/v1/markets'

    json = JSON.parse(response.body).first.symbolize_keys

    expect(response).to be_success

    expect(json[:id]).to eq(market.id)
    expect(json[:name]).to eq(market.name)
    expect(json[:description]).to eq(market.description)
    expect(json[:url]).to eq(market.url)
    expect(json[:image]).to eq('images/' + market.id.to_s + '.jpg')
    expect(json[:email]).to eq(market.email)
    expect(json[:phone]).to eq(market.phone)
    expect(json[:ebt]).to eq(market.ebt)
    expect(json[:address]['street']).to eq(market.street)
    expect(json[:address]['city']).to eq(market.city)
    expect(json[:address]['state']).to eq(market.state)
    expect(json[:address]['zip']).to eq(market.zip)
    expect(json[:address]['latitude']).to eq(market.latitude.to_s)
    expect(json[:address]['longitude']).to eq(market.longitude.to_s)
    expect(json[:hours]).to eq(market.hours.to_a)
  end
end
