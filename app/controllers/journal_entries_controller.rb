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

    def create

        @answer = Answer.new
        @answer.question_id = params[:question_id]
        @answer.user_reply = params[:user_reply]
        @answer.user_id = current_user.id
        @answer.save
        redirect_to '/journal/history'

    end

    def destroy
        
    end

    
end
