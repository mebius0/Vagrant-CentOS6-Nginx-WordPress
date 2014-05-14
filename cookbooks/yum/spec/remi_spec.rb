require 'spec_helper'

describe 'yum::remi' do
  context 'yum::remi uses default attributes' do
    let(:chef_run) do
      ChefSpec::Runner.new do |node|
        node.set['yum']['remi']['managed'] = true
        node.set['yum']['remi-php55']['managed'] = true
      end.converge(described_recipe)
    end

    %w{ remi remi-php55 }.each do |repo|
      it "creates yum_repository[#{repo}]" do
        expect(chef_run).to create_yum_repository(repo)
      end
    end

  end
end
