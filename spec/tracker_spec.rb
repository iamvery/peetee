require 'spec_helper'

describe Peetee::Tracker do

  it "should get projects" do
    tracker = Peetee::Tracker.new(ENV['TOKEN'])

    projects = tracker.projects
    expect(projects).to be_kind_of(Array)
    expect(projects.first).to be_kind_of(Peetee::Project)
  end

  it "should get a project" do
    tracker = Peetee::Tracker.new(ENV['TOKEN'])

    project = tracker.project(ENV['PROJECT_ID'])
    expect(project).to be_kind_of(Peetee::Project)
  end

end