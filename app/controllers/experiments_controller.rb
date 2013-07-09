require 'split/export'
class ExperimentsController < ApplicationController
  def startExperiment
    Split.configure do |config|
      config.persistence = :cookie
    end
    cookies[:login] = { :value => "XJ13", :expires => Time.now + 3600}
    @experiment = ab_test("Nathan", "viewb", "viewa")
  end

  def endExperiment
    finished("Nathan")
  end

  def exportToFile

    csv_data = Split::Export.to_csv
    File.open('my.csv', 'w') {|f| f.write(csv_data) }

  end
end





