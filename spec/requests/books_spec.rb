require 'rails_helper'

describe 'POST /books' do
  let(:headers) { { "Content-Type" => "application/json" } }
  let(:valid_attributes) do
    {
      "title": "Learn Elm",
      "user_id": 1,
      "image": "example.jpg"
    }.to_json
  end

  def json
    JSON.parse(response.body)
  end

  context 'when the request is valid' do
    before { post '/books', params: valid_attributes, headers: headers }

    it 'creates a books' do
      expect(json['book']['title']).to eq('Learn Elm')
    end

    it 'returns status code 201' do
      expect(response).to have_http_status(201)
    end
  end
end
