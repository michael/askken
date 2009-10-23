class ResourcesController < ApplicationController
  include ResourcesHelper
  
  def details
    @resource = params[:id] ? Ken.get(params[:id]) : Ken.get("/en/new_order")
    
    response = render_to_string(:partial => "details", :locals => { :resource => @resource })
    render :text => response
  end
  
  def show
    @resource = params[:id] ? Ken.get(params[:id]) : Ken.get("/en/new_order")
        
    render :json => {
      :data => resource_json(@resource),
      :details_html => render_to_string(:partial => "details", :locals => { :resource => @resource })
    }
  end
  
end