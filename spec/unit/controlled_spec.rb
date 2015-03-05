require 'spec_helper'

describe 'Controlled vocabs' do
  before do
    class DummyAuthority < ActiveTriples::Resource
      include Oargun::RDF::Controlled
      property :title, predicate: RDF::DC.title
    end
  end

  describe '#rdf_label' do
    subject { DummyAuthority.new }
    context "when there are only plain labels" do
      before do
        subject.title = ["English", "French"]
      end
      it "should return both" do
        expect(subject.title).to eq ["English", "French"]
      end
    end
    context "when there are english labels" do
      before do
        subject.title = RDF::Literal.new("English", :langauge => :en)
      end
      context "and plain labels" do
        before do
          subject.title = ["Plain", RDF::Literal.new("English", :language => :en)]
        end
        it "should return the english label" do
          expect(subject.rdf_label).to eq ["English"]
        end
      end
      context "and other language labels" do
        before do
          subject.title = [RDF::Literal.new("French", :language => :fr), RDF::Literal.new("English", :language => :en)]
        end
        it "should return the english label" do
          expect(subject.rdf_label).to eq ["English"]
        end
      end
    end
  end
end
