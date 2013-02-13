class LotteriesController < ApplicationController
  before_filter :lookup, only: [:show, :new, :edit, :update, :destroy, :contestants]
  before_filter :lottery_contestants, only: [:contestants, :show]

  # GET /lotteries
  # GET /lotteries.json
  def index
    @lotteries = Lottery.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lotteries }
    end
  end

  # GET /lotteries/1
  # GET /lotteries/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lottery }
    end
  end

  # GET /lotteries/new
  # GET /lotteries/new.json
  def new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lottery }
    end
  end

  # GET /lotteries/1/edit
  def edit
    @prizes = @lottery.prizes.new
  end

  # POST /lotteries
  # POST /lotteries.json
  def create
    @lottery = Lottery.new params[:lottery]

    respond_to do |format|
      if @lottery.save
        format.html { redirect_to @lottery, notice: 'Lottery was successfully created.' }
        format.json { render json: @lottery, status: :created, location: @lottery }
      else
        format.html { render action: "new" }
        format.json { render json: @lottery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lotteries/1
  # PUT /lotteries/1.json
  def update
    respond_to do |format|
      if @lottery.update_attributes(params[:lottery])
        format.html { redirect_to @lottery, notice: 'Lottery was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lottery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lotteries/1
  # DELETE /lotteries/1.json
  def destroy
    @lottery.destroy

    respond_to do |format|
      format.html { redirect_to lotteries_url }
      format.json { head :no_content }
    end
  end

  def contestants
    @users = User.all
  end


  private

  def lookup
    @lottery = params[:id] ? Lottery.find( params[:id] ) : Lottery.new
  end

  def lottery_contestants
    @contestants = @lottery.users
  end
end
