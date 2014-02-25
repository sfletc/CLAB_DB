class PagesController < ApplicationController
  
  def oligos
    @oligos=Oligo.all
  end

  def plasmids
    @plasmids=Plasmid.all
  end

  def seeds
    @seeds=Seed.all
  end

  def home
    #@oligos=oligos.build
  #  if signed_in?
  #    @Mynewdatum  = current_user.mynewdata.build
  #  end
  #  @mynewdata = Mynewdatum.all.paginate(page: params[:page])
  end

  def help
  end

  def upload
    #@oligo = oligos.build 
  #  @feed_items = current_user.feed.paginate(page: params[:page]) if signed_in?
  end

  def search
  end

  def signup
  end

  def contact
  end

  #def experiments
  #  if signed_in?
  #   @experiment_data = Experiment_datum.where(:exp => params[:exp_no])
  #    else
  #      @experiment_data = Experiment_datum.where(:exp => "0")
  #  end
  #end
 
  def new
    #@oligo = Oligo.new
  end

  def index
    #@oligo = Oligo.all
  end
  
end
