ActiveAdmin.register User do

    # /admin/posts/:id/comments
    member_action :comments do
      @user_devises = User.find(params[:id])

      # This will render app/views/admin/posts/comments.html.erb
    end
  
end
