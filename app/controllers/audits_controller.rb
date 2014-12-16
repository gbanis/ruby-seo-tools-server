class AuditsController < ApplicationController
  def create
    @audit = Audit.new(audit_params)
    @audit.generate
    render json: @audit, except: [:raw_html]
  end

  def index
    @last_audit = Audit.all.last
    render json: @last_audit, except: [:raw_html]
  end

  private

  def audit_params
    params.permit(:url, :keyword)
  end
end

