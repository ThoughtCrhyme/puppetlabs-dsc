require 'spec_helper_acceptance'
require 'erb'
require 'dsc_utils'
require 'pry'

def apply_manifest_and_verify(agent, ensure_value, name)
  context "on #{agent}" do
    dsc_type = 'environment'
    dsc_module = 'PSDesiredStateConfiguration'
    it 'Execute Manifest' do
      on(agent, puppet('apply'), :stdin => dsc_manifest(ensure_value, name), :acceptable_exit_codes => [0, 2]) do |result|
        assert_no_match(/Error:/, result.stderr, 'Unexpected error was detected!')
      end
    end
    it 'Verify DSC resource is correct' do
      assert_dsc_resource(
          agent,
          dsc_type,
          dsc_module,
          :Ensure => ensure_value,
          :Name => name
      )
    end
  end
end

describe 'Apply DSC Environment Resources' do
# 'MODULES-2501 - C68554 - Apply DSC Environment Resource that Deletes Environment Variable'
  def dsc_manifest(ensure_value, name)
    <<-MANIFEST
      dsc_environment { 'env_var':
        dsc_ensure => '#{ensure_value}',
        dsc_name   => '#{name}',
        dsc_value  => 'Should not exist!',
      }
    MANIFEST
  end

  context 'can add and remove an environment value' do
    binding.pry
    name = 'delete'
    windows_agents.each do |agent|
      apply_manifest_and_verify(agent, 'present', name)
      apply_manifest_and_verify(agent, 'absent', name)
    end
  end
end
