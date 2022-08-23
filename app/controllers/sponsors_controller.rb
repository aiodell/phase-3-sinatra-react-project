class SponsorsController < ApplicationController
    set :default_content_type, 'application/json'

    # get all sponsors
    get '/sponsors' do
        sponsors = Sponsor.all
        sponsors.to_json
    end

    # get sponsors
    get '/sponsors/:id' do
        sponsor = Sponsor.find(params[:id])
        sponsor.to_json
    end
    
end