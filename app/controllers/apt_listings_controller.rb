class AptListingsController < ApplicationController
  before_action :set_apt_listing, only: [:show, :edit, :update, :destroy]
  # GET /apt_listings
  # GET /apt_listings.json
  def index
    @apt_listings = AptListing.all
  end

  # GET /apt_listings/1
  # GET /apt_listings/1.json
  def show
  end

  # GET /apt_listings/new
  def new
    @apt_listing = AptListing.new
  end

  # GET /apt_listings/1/edit
  def edit
  end

  # POST /apt_listings
  # POST /apt_listings.json
  def create
    @apt_listing = current_user.aptListing.new(apt_listing_params)

    respond_to do |format|
      if @apt_listing.save
        format.html { redirect_to @apt_listing, notice: 'Apt listing was successfully created.' }
        format.json { render :show, status: :created, location: @apt_listing }
      else
        format.html { render :new }
        format.json { render json: @apt_listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apt_listings/1
  # PATCH/PUT /apt_listings/1.json
  def update
    respond_to do |format|
      if @apt_listing.update(apt_listing_params)
        format.html { redirect_to @apt_listing, notice: 'Apt listing was successfully updated.' }
        format.json { render :show, status: :ok, location: @apt_listing }
      else
        format.html { render :edit }
        format.json { render json: @apt_listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apt_listings/1
  # DELETE /apt_listings/1.json
  def destroy
    @apt_listing.destroy
    respond_to do |format|
      format.html { redirect_to apt_listings_url, notice: 'Apt listing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apt_listing
      @apt_listing = AptListing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apt_listing_params
      params.require(:apt_listing).permit(:address_1, :address_2, :city, :state, :postal_code, :country, :manag_name, :manag_phone, :manag_contact_hrs)
    end
end
