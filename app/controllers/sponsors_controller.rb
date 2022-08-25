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

    # #update a sponsor
    # patch '/sponsors/:id' do
    #     sponsors = Sponsor.find(params[:id])
    #     sponsors = Sponsor.update(
    #         num_of_foxes: fox_count
    #     )
    #     sponsors.to_json
    # end

end