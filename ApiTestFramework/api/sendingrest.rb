require 'rest-client'
require 'faraday'
require 'json'

class ExampleApiClient

  def self.employees
    url = 'https://jsonplaceholder.typicode.com/posts'
    data = Faraday.get(url).body
    JSON.parse(data, symbolize_names: true)
  end
end
