require '../api/sendingrest'

describe ExampleApiClient do

  describe 'employees' do
    let(:employees_response) { ExampleApiClient.employees() }
    it "returns correctly some data" do
      expect(employees_response).to be_kind_of(Hash)
      expect(employees_response).to have_key(:userId)
      expect(employees_response).to have_key(:title)
    end
  end

  it "JSON body response contains expected recipe attributes" do
    json_response = JSON.parse(response.body)
    expect(hash_body.keys).to match_array([:id, :ingredients, :instructions])
  end
end
