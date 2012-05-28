class StatsController < ApplicationController
 

  # GET /stats
  # GET /stats.json
  def index
     
   @user = User.find(current_user)
   @stats = @user.stats.order(:date)
   @stats_by_category = @user.stats.find(:all).group_by { |s| s.category}
   @stats_by_weight = @user.stats.where(:category_id => "1") 
   @stats_by_bs = @user.stats.where(:category_id => "3")
   @stats_by_bp = @user.stats.where(:category_id => "4") 
   @stats_by_bf = @user.stats.where(:category_id => "5") 
   @stats_by_ti = @user.stats.where(:category_id => "6") 
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @stats }
    end
    

  end

  # GET /stats/1
  # GET /stats/1.json
  def show
    @stat = Stat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @stat }
    end
  end

  # GET /stats/new
  # GET /stats/new.json
  def new
    @stat = Stat.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @stat }
    end
  end

  # GET /stats/1/edit
  def edit
    @stat = Stat.find(params[:id])
  end

  # POST /stats
  # POST /stats.json
  def create
    @stat = current_user.stats.build(params[:stat])

    respond_to do |format|
      if @stat.save
        format.html { redirect_to root_path, notice: 'Stat was successfully created.' }
        format.json { render json: @stat, status: :created, location: @stat }
        format.js #added
      else
        format.html { render action: "new" }
        format.json { render json: @stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /stats/1
  # PUT /stats/1.json
  def update
    @stat = Stat.find(params[:id])

    respond_to do |format|
      if @stat.update_attributes(params[:stat])
        format.html { redirect_to @stat, notice: 'Stat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stats/1
  # DELETE /stats/1.json
  def destroy
    @stat = Stat.find(params[:id])
    @stat.destroy
    
    respond_to do |format|
      format.html { redirect_to stats_url }
      format.js #added
      format.json { head :no_content }
    end
  end
end
