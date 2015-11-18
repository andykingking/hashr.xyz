require 'spec_helper'

RSpec.describe Hashr::API do
  include Rack::Test::Methods

  let(:app) { Hashr::API }

  context 'POST /md5' do
    it 'returns the correct hash' do
      post '/md5', :data => "I've seen a million faces and I've rocked them all"
      expect(last_response.status).to eq 200
      result = JSON.parse(last_response.body, :symbolize_names => true)
      expect(result[:hash]).to eq 'BdU1o1gk899VTLVvLUD6cA=='
    end
  end
end
