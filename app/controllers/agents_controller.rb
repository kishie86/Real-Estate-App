class AgentsController < ApplicationController
    def index
        @agents = Agent.all 
    end

    def show
        @agent = Agent.find(params[:id])
    end

    def new
        @agent = Agent.new
    end

    def create 
        @agent = Agent.create(agent_params)
        redirect_to agents_path
    end

    def edit
        @agent = Agent.find(params[:id])
    end 

    def update
         @agent = Agent.find_by(id: params[:id])
         @agent.update(agent_params)
         redirect_to agent_path
    end

    def destroy
         @agent = Agent.find_by(id: params[:id])
         @agent.destroy
         redirect_to agents_path
    end

    def agent_params
        params.require(:agent).permit(:name, :telephone, :work_address, :email_address, :years_of_experience)
    end
    
end
