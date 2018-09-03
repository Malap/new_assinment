require 'zip'
class AnimalsController <  ApplicationController

def index
  @animals = Animal.order('created_at DESC')
end

def new
end

def create
  if params[:archive].present?
    Zip::File.open(params[:archive].tempfile) do |zip_file|
    zip_file.glob('*.json').each do |entry|
    	byebug
       Animal.create!(JSON.load(entry.get_input_stream.read.to_json))
      end
    end
  end
  redirect_to animals_path
end
  
end
