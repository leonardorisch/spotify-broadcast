class SpotifyAccountsController < ApplicationController
  before_action :set_spotify_account, only: [:show, :edit, :update, :destroy]

  # GET /spotify_accounts
  # GET /spotify_accounts.json
  def index
    @spotify_accounts = SpotifyAccount.all
  end

  def spotify
    spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
    # Now you can access user's private data, create playlists and much more

    # Access private data
  end

  # GET /spotify_accounts/1
  # GET /spotify_accounts/1.json
  def show
  end

  # GET /spotify_accounts/new
  def new
    @spotify_account = SpotifyAccount.new
  end

  # GET /spotify_accounts/1/edit
  def edit
  end

  # POST /spotify_accounts
  # POST /spotify_accounts.json
  def create
    @spotify_account = SpotifyAccount.new(spotify_account_params)

    respond_to do |format|
      if @spotify_account.save
        format.html { redirect_to @spotify_account, notice: 'Spotify account was successfully created.' }
        format.json { render :show, status: :created, location: @spotify_account }
      else
        format.html { render :new }
        format.json { render json: @spotify_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spotify_accounts/1
  # PATCH/PUT /spotify_accounts/1.json
  def update
    respond_to do |format|
      if @spotify_account.update(spotify_account_params)
        format.html { redirect_to @spotify_account, notice: 'Spotify account was successfully updated.' }
        format.json { render :show, status: :ok, location: @spotify_account }
      else
        format.html { render :edit }
        format.json { render json: @spotify_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spotify_accounts/1
  # DELETE /spotify_accounts/1.json
  def destroy
    @spotify_account.destroy
    respond_to do |format|
      format.html { redirect_to spotify_accounts_url, notice: 'Spotify account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spotify_account
      @spotify_account = SpotifyAccount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spotify_account_params
      params[:spotify_account]
    end
end
