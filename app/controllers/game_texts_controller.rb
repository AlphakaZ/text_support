class GameTextsController < ApplicationController
  # GET /game_texts
  # GET /game_texts.json
  def index
    @game_texts = GameText.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @game_texts }
    end
  end

  # GET /game_texts/1
  # GET /game_texts/1.json
  def show
    @game_text = GameText.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @game_text }
    end
  end

  # GET /game_texts/new
  # GET /game_texts/new.json
  def new
    @game_text = GameText.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @game_text }
    end
  end

  # GET /game_texts/1/edit
  def edit
    @game_text = GameText.find(params[:id])
  end

  # POST /game_texts
  # POST /game_texts.json
  def create
    @game_text = GameText.new(params[:game_text])

    respond_to do |format|
      if @game_text.save
        format.html { redirect_to @game_text, notice: 'Game text was successfully created.' }
        format.json { render json: @game_text, status: :created, location: @game_text }
      else
        format.html { render action: "new" }
        format.json { render json: @game_text.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /game_texts/1
  # PUT /game_texts/1.json
  def update
    @game_text = GameText.find(params[:id])

    respond_to do |format|
      if @game_text.update_attributes(params[:game_text])
        format.html { redirect_to @game_text, notice: 'Game text was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @game_text.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game_texts/1
  # DELETE /game_texts/1.json
  def destroy
    @game_text = GameText.find(params[:id])
    @game_text.destroy

    respond_to do |format|
      format.html { redirect_to game_texts_url }
      format.json { head :no_content }
    end
  end
end
