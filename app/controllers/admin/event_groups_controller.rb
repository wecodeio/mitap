class Admin::EventGroupsController < Admin::BaseController
  before_action :set_event_group, only: [:show, :edit, :update, :destroy]

  def index
    @event_groups = EventGroup.all
  end

  def show
    @event_groups = EventGroup.all
    @event_group = EventGroup.find(params[:id])
    @registrations = Registration.all
  end
  
  def new
    @event_group = EventGroup.new
  end
  
  def edit
  end

  def newEvent_email
      UserMailer.with(email: params[:email],).newEvent_email.deliver_now
      redirect_to admin_event_group_path
      flash.alert = "Email enviado correctamente"
  end
  
  
  def create
    @event_group = EventGroup.new(event_group_params)

    respond_to do |format|
      if @event_group.save
        format.html { redirect_to admin_event_groups_path(@event_group),
         notice: 'El grupo de eventos fué creado satisfactoriamente.' }
      else
        format.html { render :new }
      end
    end
  end
  
  def update
    respond_to do |format|
      if @event_group.update(event_group_params)
        format.html { redirect_to admin_event_groups_path(@event_group),
         notice: 'El grupo de eventos fué editado satisfactoriamente.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @event_group.destroy
    respond_to do |format|
      format.html { redirect_to admin_event_groups_url,
      notice: 'El grupo de eventos fué eliminado satisfactoriamente.' }
    end
  end

  private
    
    def set_event_group
      @event_group = EventGroup.find(params[:id])
    end

    def event_group_params
      params.fetch(:event_group, {}).permit(:name)
    end

    def registration_params
      params.fetch(:registration, {}).permit(:id)
    end
end
