class KeywordsController < ApplicationController
  def index
    load_keywords
  end

  def edit
    set_keyword
    load_keywords
  end

  # # POST /keywords
  def create
    @keyword = Keyword.new(keyword_params)
    flash[:notice] = 'Keyword was successfully reset'
    unless params[:commit] == 'RESET'
      if @keyword.save
        flash[:notice] = 'Keyword was successfully created.'
        @keyword = Keyword.new
      end
    end
    load_keywords
    render 'create_or_update'
  end

  # PATCH/PUT /keywords/1
  def update
    set_keyword
    flash[:notice] = 'Keyword was successfully reset'
    unless params[:commit] == 'RESET'
      if @keyword.update(keyword_params)
        flash[:notice] = 'Keyword was successfully updated.'
        @keyword = Keyword.new
      end
    end
    load_keywords
    render 'create_or_update'
  end

  # DELETE /keywords/1
  def destroy
    @keyword = Keyword.find(params[:id])
    @keyword.destroy
    flash[:notice] = 'Keyword was successfully deleted.'
    @keyword = Keyword.new
    load_keywords
    render 'create_or_update'
  end

  private
  def load_keywords
    @keywords = Keyword.all
  end

  def set_keyword
    @keyword = Keyword.find(params[:id])
  end

  def keyword_params
    params.require(:keyword).permit(:keyword)
  end
end


