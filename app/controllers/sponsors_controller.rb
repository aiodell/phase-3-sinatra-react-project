class SponsorsController < ApplicationController
    set :default_content_type, 'application/json'

    @fox_sponsored_names
    

    # get all sponsors
    get '/sponsors' do
        sponsors = Sponsor.all
        sponsors.to_json
    end

     # find fox names associated with the sponsors
    get '/sponsors/:id' do
        sponsor = Sponsor.find(params[:id])
        fox_names = sponsor.fox_sponsored_names
        sponsor.to_json
        fox_names.to_json
    end

    #delete a sponsor
      delete '/sponsors/:id' do
        sponsors = Sponsor.find(params[:id])
        sponsors.destroy
        sponsors.to_json
    end

    #create a sponsor
    post '/sponsors' do 
        sponsors = Sponsor.create(
            name: params[:name],
            image_url: params[:image_url],
            location: params[:location],
        )
        sponsors.to_json
    end
end