class SponsorsController < ApplicationController
    set :default_content_type, 'application/json'

    # get all sponsors
    get '/sponsors' do
        sponsors = Sponsor.all
        sponsors.to_json
    end

    # get sponsor by ID
    get '/sponsors/:id' do
        sponsor = Sponsor.find(params[:id])
        sponsor.to_json
    end

    #delete a sponsor
      delete '/sponsors/:id' do
        sponsorss = Sponsor.find(params[:id])
        sponsorss.destroy
        sponsorss.to_json
    end

    #create a fox 
    post '/sponsors' do 
        sponsorsss = Sponsor.create(
            name: params[:name],
            image_url: params[:image_url],
            location: params[:location],
            num_of_foxes: params[:num_of_foxes]
        )
        sponsorsss.to_json
    end

    #update a fox
    patch '/sponsors/:id' do
        sponsorssss = Sponsor.find(params[:id])
        sponsorssss = Sponsor.update(
            name: params[:name],
            image_url: params[:image_url],
            location: params[:location],
            num_of_foxes: params[:num_of_foxes]
        )
        sponsorssss.to_json
    end

end