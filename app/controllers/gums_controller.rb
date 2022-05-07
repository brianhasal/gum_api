class GumsController < ApplicationController

  def index
    gum = Gum.all
    render json: gum.as_json
  end

  def create
    gum = Gum.new(
      "name": params["name"],
      "flavor": params["flavor"],
      "cost": params["cost"]
    )
    gum.save
    render json: gum.as_json
  end

  def show
    gum = Gum.find_by(id: params["id"])
    render json: gum.as_json
  end

  def update
    gum = Gum.find_by(id: params["id"])
    gum.name = params["name"] || gum.name
    gum.flavor = params["flavor"] || gum.flavor
    gum.cost = params["cost"] || gum.cost
    gum.save
    render json: gum.as_json
  end

  def destroy
    gum = Gum.find_by(id: params["id"])
    gum.delete
    render json: {message: "Gum Deleted"}
  end



end
