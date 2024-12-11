class QueriesController < ApplicationController
  def index
    matching_queries = Query.all

    @list_of_queries = matching_queries.order({ :created_at => :desc })

    render({ :template => "queries/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_queries = Query.where({ :id => the_id })

    @the_query = matching_queries.at(0)

    render({ :template => "queries/show" })
  end

  def create
    the_query = Query.new
    the_query.topic = params.fetch("query_topic")
    the_query.user_id = params.fetch("query_user_id")
    the_query.image = params.fetch("query_image")

    if the_query.valid?
      the_query.save
      redirect_to("/queries", { :notice => "Query created successfully." })
    else
      redirect_to("/queries", { :alert => the_query.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_query = Query.where({ :id => the_id }).at(0)

    the_query.topic = params.fetch("query_topic")
    the_query.user_id = params.fetch("query_user_id")
    the_query.image = params.fetch("query_image")

    if the_query.valid?
      the_query.save
      redirect_to("/queries/#{the_query.id}", { :notice => "Query updated successfully."} )
    else
      redirect_to("/queries/#{the_query.id}", { :alert => the_query.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_query = Query.where({ :id => the_id }).at(0)

    the_query.destroy

    redirect_to("/queries", { :notice => "Query deleted successfully."} )
  end
end
