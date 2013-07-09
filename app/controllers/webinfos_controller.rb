require 'active_record'

class WebinfosController < ApplicationController
  # GET /webinfos
  # GET /webinfos.json
  def index
    @webinfo = Webinfos.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @webinfos }
    end
  end

  # GET /webinfos/1
  # GET /webinfos/1.json
  def show
    @webinfo = Webinfos.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @webinfo }
    end
  end

  # GET /webinfos/new
  # GET /webinfos/new.json
  def new
    @webinfo = Webinfos.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @webinfo }
    end
  end

  # GET /webinfos/1/edit
  def edit
    @webinfo = Webinfos.find(params[:id])
  end

  # POST /webinfos
  # POST /webinfos.json
  def create
    @webinfo = Webinfos.new(params[:webinfo])

    respond_to do |format|
      if @webinfo.save
        format.html { redirect_to @webinfo, :notice => 'Webinfo was successfully created.' }
        format.json { render :json => @webinfo, :status => :created, :location => @webinfo }
      else
        format.html { render :action => "new" }rs, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /webinfos/1
  # PUT /webinfos/1.json
  def update
    @webinfo = Webinfos.find(params[:id])

    respond_to do |format|
      if @webinfo.update_attributes(params[:webinfo])
        format.html { redirect_to @webinfo, :notice => 'Webinfo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @webinfo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /webinfos/1
  # DELETE /webinfos/1.json
  def destroy
    @webinfo = Webinfos.find(params[:id])
    @webinfo.destroy

    respond_to do |format|
      format.html { redirect_to webinfos_url }
      format.json { head :no_content }
    end
  end
end
