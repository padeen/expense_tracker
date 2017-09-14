require 'rack/test'
require 'json'
require_relative '../../app/api'

module ExpenseTracker
	RSpec.describe 'Expense Tracker API' do
		include Rack::Test::Methods

		it 'records submitted expenses' do

			def app
				ExpenseTracker::API.new
			end

			coffee = {
				'payee' => 'Starbucks',
				'amount' => 5.75,
				'date' => '2017-06-10'
			}

			post '/expenses',JSON.generate(coffee)
		end
	end
end
