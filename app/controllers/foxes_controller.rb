class FoxesController < ApplicationController
    set :default_content_type, 'application/json'

    get '/foxes' do
        foxes = Fox.all
        foxes.to_json
    end



end