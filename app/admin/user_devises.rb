ActiveAdmin.register UserDevise do
=begin member_action :lock, :method => :put do
      user_devise = UserDevise.find(params[:id])
      user_devise.lock
      redirect_to :action => :show, :notice => "Locked!"
  end
  def lock

  end
=end

end
