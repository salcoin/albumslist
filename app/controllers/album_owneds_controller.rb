class AlbumOwnedsController < ApplicationController
  # GET /album_owneds
  # GET /album_owneds.json
  def index
    @album_owneds = AlbumOwned.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @album_owneds }
    end
  end

  # GET /album_owneds/1
  # GET /album_owneds/1.json
  def show
    @album_owned = AlbumOwned.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @album_owned }
    end
  end

  # GET /album_owneds/new
  # GET /album_owneds/new.json
  def new
    @album_owned = AlbumOwned.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @album_owned }
    end
  end

  # GET /album_owneds/1/edit
  def edit
    @album_owned = AlbumOwned.find(params[:id])
  end

  # POST /album_owneds
  # POST /album_owneds.json
  def create
    @album_owned = AlbumOwned.new(params[:album_owned])

    respond_to do |format|
      if @album_owned.save
        format.html { redirect_to @album_owned, notice: 'Album owned was successfully created.' }
        format.json { render json: @album_owned, status: :created, location: @album_owned }
      else
        format.html { render action: "new" }
        format.json { render json: @album_owned.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /album_owneds/1
  # PUT /album_owneds/1.json
  def update
    @album_owned = AlbumOwned.find(params[:id])

    respond_to do |format|
      if @album_owned.update_attributes(params[:album_owned])
        format.html { redirect_to @album_owned, notice: 'Album owned was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @album_owned.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /album_owneds/1
  # DELETE /album_owneds/1.json
  def destroy
    @album_owned = AlbumOwned.find(params[:id])
    @album_owned.destroy

    respond_to do |format|
      format.html { redirect_to album_owneds_url }
      format.json { head :no_content }
    end
  end
end
