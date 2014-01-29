require 'spec_helper'

describe Peetee::ProjectResource, :vcr do

  it "should create an epic" do
    project = Peetee::ProjectResource.new(ENV['TOKEN'], { id: ENV['PROJECT_ID'] })
    epic = project.epics.post(name: "Peetee Test Epic")
    expect(epic).to be_kind_of(Peetee::EpicResource)
    expect(epic.name).to eq("Peetee Test Epic")
  end

  it "should get epics" do
    project = Peetee::ProjectResource.new(ENV['TOKEN'], { id: ENV['PROJECT_ID'] })
    epics = project.epics.get
    expect(epics).to be_kind_of(Array)
    expect(epics.first).to be_kind_of(Peetee::EpicResource)
  end

  it 'creates a story' do
    project = Peetee::ProjectResource.new(ENV['TOKEN'], { id: ENV['PROJECT_ID'] })
    story = project.stories.post(name: 'Peetee Test Story')
    expect(story).to be_kind_of(Peetee::StoryResource)
    expect(story.name).to eq('Peetee Test Story')
  end

end
