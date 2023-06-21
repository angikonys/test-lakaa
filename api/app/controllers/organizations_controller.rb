class OrganizationsController < ApplicationController
  def index
    @organizations = Organization.all
    puts @organizations
    render json: @organizations
  end

  def show
    @organization = Organization.find(params[:id])

    render json: @organization
  end

  def create
    @organization = Organization.create(name: params[:name], site_url: params[:site_url], logo_url: params[:logo_url])

    render json: @organization
  end

  def update
    @organization = Organization.find(params[:id])
    @organization.update(name: params[:name], site_url: params[:site_url], logo_url: params[:logo_url])

    render json: @organization
  end

  def destroy
    @organization = Organization.find(params[:id])
    @organization.destroy

    render json: "#{@organization.name} has been deleted successfully!"
  end
end
