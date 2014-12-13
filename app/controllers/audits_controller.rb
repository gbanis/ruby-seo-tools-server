class AuditsController < ApplicationController
  def create
    @audit = Audit.create(audit_params)
    render json: @audit
  end

  private

  def audit_params
    params.permit(:url, :keyword)
  end
end

