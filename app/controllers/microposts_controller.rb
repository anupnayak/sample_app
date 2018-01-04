class MicropostsController < ApplicationController
    before_filter :authenticate, :only => [:create, :destroy]
    
    def create
        @micropost = current_user.microposts.new(micro_params)
        if @micropost.save
            flash[:success] = "Micropost created!"
            redirect_to root_path
        else
            render 'pages/home'
        end
    end
    
    def destroy
    end

    private
    def micro_params
        params.require(:micropost).permit(:content)
    end
end