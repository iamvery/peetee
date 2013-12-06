require 'spec_helper'

describe Peetee::Project do

  it "should get epics" do
    client = Peetee::Client.new(ENV['TOKEN'])
    project = Peetee::Project.new(client, { id: ENV['PROJECT_ID'] })

    epics = project.epics
    expect(epics).to be_kind_of(Array)
    expect(epics.first).to be_kind_of(Peetee::Epic)
  end

end