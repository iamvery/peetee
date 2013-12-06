require 'spec_helper'

describe Peetee::Project do

  it "should get epics" do
    project = Peetee::Project.new(ENV['TOKEN'], { id: ENV['PROJECT_ID'] })
    epics = project.epics
    expect(epics).to be_kind_of(Array)
    expect(epics.first).to be_kind_of(Peetee::Epic)
  end

end