class AuditsController < ApplicationController
  def create
    @audit = Audit.new(audit_params)
    @audit.get_html(audit_params[:url])
    @audit.save
    render json: @audit
  end

  private

  def audit_params
    params.permit(:url, :keyword)
  end
end

