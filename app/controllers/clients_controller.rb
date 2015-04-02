class ClientsController < ApplicationController

	def index 
		render json: Client.maybe
	end

	def create 
		client = Client.new(client_params)

		if client.save 
			render json: client
		else
			render json: {
				"message":"validationError", 
				"errors": client.errors.messages 
			}
		end
	end

	private 
		def client_params
			params[:client]
				.permit(:name, :gender, :phone, :email, :vip)
		end
end
