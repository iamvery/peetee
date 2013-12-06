require 'spec_helper'

describe Peetee::Tracker do

  it "should get projects" do
    tracker = Peetee::Tracker.new(ENV['TOKEN'])

    projects = tracker.projects.get
    expect(projects).to be_kind_of(Array)
    expect(projects.first).to be_kind_of(Peetee::ProjectResource)
  end

  it "shoud create a project" do
    tracker = Peetee::Tracker.new(ENV['TOKEN'])

    project = tracker.projects.post(name: "New Project", public: true)
    expect(project).to be_kind_of(Peetee::ProjectResource)
    expect(project.name).to eq("New Project")
  end

  it "should get a project" do
    tracker = Peetee::Tracker.new(ENV['TOKEN'])

    project = tracker.project(ENV['PROJECT_ID']).get
    expect(project).to be_kind_of(Peetee::ProjectResource)
  end

end