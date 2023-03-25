class BoardsController < ApplicationController

    def index
        if current_user.nil?
            redirect_to  login_path
        else
            @boards = Board.all.includes(:user).order(created_at: :desc)
        end
    end
end
