class NewTablesController < ApplicationController
  # GET /new_tables
  # GET /new_tables.json
  def index
    @new_tables = NewTable.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @new_tables }
    end
  end

  # GET /new_tables/1
  # GET /new_tables/1.json
  def show
    @new_table = NewTable.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @new_table }
    end
  end

  # GET /new_tables/new
  # GET /new_tables/new.json
  def new
    @new_table = NewTable.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @new_table }
    end
  end

  # GET /new_tables/1/edit
  def edit
    @new_table = NewTable.find(params[:id])
  end

  # POST /new_tables
  # POST /new_tables.json
  def create
    @new_table = NewTable.new(params[:new_table])

    respond_to do |format|
      if @new_table.save
        format.html { redirect_to @new_table, :notice => 'New table was successfully created.' }
        format.json { render :json => @new_table, :status => :created, :location => @new_table }
      else
        format.html { render :action => "new" }
        format.json { render :json => @new_table.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /new_tables/1
  # PUT /new_tables/1.json
  def update
    @new_table = NewTable.find(params[:id])

    respond_to do |format|
      if @new_table.update_attributes(params[:new_table])
        format.html { redirect_to @new_table, :notice => 'New table was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @new_table.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /new_tables/1
  # DELETE /new_tables/1.json
  def destroy
    @new_table = NewTable.find(params[:id])
    @new_table.destroy

    respond_to do |format|
      format.html { redirect_to new_tables_url }
      format.json { head :no_content }
    end
  end
end
