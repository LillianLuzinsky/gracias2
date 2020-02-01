class JournalEntriesController < ApplicationController

   def journal
        if current_user  == nil
            redirect_to '/signup'
        else
            @questions = Question.all
            
            
        end
    end


    def history
        if current_user  == nil
            redirect_to '/login'
        else
            @answers = current_user.answers
            # @answers = Answer.includes(:question).where(user_id: current_user.id)
        end

    end

    def show_entry

        @answer = Answer.find_by :id => params[:entry_id]
        redirect_to '/journal/history/:entry_id'

    end

    def edit_entry
        @answer = Answer.find_by :id => params[:entry_id]
        @answer.question_id = 1 #HARDCODED - CHANGE LATER
        @answer.user_reply = params[:user_reply]
        @answer.user_id = current_user.id
        @answer.save
        redirect_to '/journal/history'
    end

    def destroy_entry
        @answer = Answer.find_by :id => params[:entry_id]
        @answer.destroy
        redirect_to '/journal/history'
    end
    
    def create

        @answer = Answer.new
        @answer.question_id = params[:question_id]
        @answer.user_reply = params[:user_reply]
        @answer.user_id = current_user.id
        @answer.save
        redirect_to '/journal/history'

    end
end
