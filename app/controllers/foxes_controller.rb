class FoxesController < ApplicationController
    set :default_content_type, 'application/json'

    #get all foxes
    get '/foxes' do
        foxes = Fox.all
        foxes.to_json
    end

    #get all foxes by ID
    get '/foxes/:id' do
        fox = Fox.find(params[:id])
        fox.to_json
    end

    #delete a fox
    delete '/foxes/:id' do
        fox = Fox.find(params[:id])
        fox.destroy
        fox.to_json
    end

    #create a fox 
    post '/foxes' do 
        foxes = Fox.create(
            name: params[:name],
            age: params[:age],
            favorite_toy: params[:favorite_toy],
            personality: params[:personality],
            image_url: params[:image_url],
            sponsor_id: nil
        )
        foxes.to_json
    end

    # update a fox
    patch '/foxes/:id' do
        fox = Fox.find(params[:id])
        fox.update(
            age: params[:age],
            favorite_toy: params[:favorite_toy],
            personality: params[:personality],
            image_url: params[:image_url],
            sponsor_id: params[:sponsor_id]
        )
        foxeys.to_json
    end
end