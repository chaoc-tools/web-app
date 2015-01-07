class ProxyVotesCollectedController < ApplicationController
  before_action :set_proxy_votes_collected, only: [:show, :edit, :update, :destroy]

  # GET /proxy_votes_collected
  # GET /proxy_votes_collected.json
  def index
    @proxy_votes_collected = ProxyVotesCollected.all
  end

  # GET /proxy_votes_collected/1
  # GET /proxy_votes_collected/1.json
  def show
  end

  # GET /proxy_votes_collected/new
  def new
    @proxy_votes_collected = ProxyVotesCollected.new
  end

  # GET /proxy_votes_collected/1/edit
  def edit
  end

  # POST /proxy_votes_collected
  # POST /proxy_votes_collected.json
  def create
    @proxy_votes_collected = ProxyVotesCollected.new(proxy_votes_collected_params)

    respond_to do |format|
      if @proxy_votes_collected.save
        format.html { redirect_to @proxy_votes_collected, notice: 'Proxy votes collected was successfully created.' }
        format.json { render :show, status: :created, location: @proxy_votes_collected }
      else
        format.html { render :new }
        format.json { render json: @proxy_votes_collected.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proxy_votes_collected/1
  # PATCH/PUT /proxy_votes_collected/1.json
  def update
    respond_to do |format|
      if @proxy_votes_collected.update(proxy_votes_collected_params)
        format.html { redirect_to @proxy_votes_collected, notice: 'Proxy votes collected was successfully updated.' }
        format.json { render :show, status: :ok, location: @proxy_votes_collected }
      else
        format.html { render :edit }
        format.json { render json: @proxy_votes_collected.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proxy_votes_collected/1
  # DELETE /proxy_votes_collected/1.json
  def destroy
    @proxy_votes_collected.destroy
    respond_to do |format|
      format.html { redirect_to proxy_votes_collected_index_url, notice: 'Proxy votes collected was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proxy_votes_collected
      @proxy_votes_collected = ProxyVotesCollected.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proxy_votes_collected_params
      params.require(:proxy_votes_collected).permit(:annual_meeting_id, :building_id, :user_id, :votes_collected)
    end
end
