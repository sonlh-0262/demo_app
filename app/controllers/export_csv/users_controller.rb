class ExportCsv::UsersController < ApplicationController
  require "csv"

  def create
    send_data generate_csv, filename: "file.csv"
  end

  private

  def generate_csv
    CSV.generate do |csv|
      headers = ["id", "name"]
      csv << headers

      User.all.each do |user|
        csv << [user.id, user.name]
      end
    end
  end
end