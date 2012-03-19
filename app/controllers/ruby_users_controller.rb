class RubyUsersController < ApplicationController
  # GET /ruby_users
  # GET /ruby_users.json
  def index
    @ruby_users = RubyUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ruby_users }
    end
  end

  # GET /ruby_users/1
  # GET /ruby_users/1.json
  def show
    @ruby_user = RubyUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ruby_user }
    end
  end

  # GET /ruby_users/new
  # GET /ruby_users/new.json
  def new
    @ruby_user = RubyUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ruby_user }
    end
  end

  # GET /ruby_users/1/edit
  def edit
    @ruby_user = RubyUser.find(params[:id])
  end

  # POST /ruby_users
  # POST /ruby_users.json
  def create
    @ruby_user = RubyUser.new(params[:ruby_user])

    respond_to do |format|
      if @ruby_user.save
        format.html { redirect_to @ruby_user, notice: 'Ruby user was successfully created.' }
        format.json { render json: @ruby_user, status: :created, location: @ruby_user }
      else
        format.html { render action: "new" }
        format.json { render json: @ruby_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ruby_users/1
  # PUT /ruby_users/1.json
  def update
    @ruby_user = RubyUser.find(params[:id])

    respond_to do |format|
      if @ruby_user.update_attributes(params[:ruby_user])
        format.html { redirect_to @ruby_user, notice: 'Ruby user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ruby_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ruby_users/1
  # DELETE /ruby_users/1.json
  def destroy
    @ruby_user = RubyUser.find(params[:id])
    @ruby_user.destroy

    respond_to do |format|
      format.html { redirect_to ruby_users_url }
      format.json { head :no_content }
    end
  end
end
