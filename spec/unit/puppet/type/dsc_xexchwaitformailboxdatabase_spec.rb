#!/usr/bin/env ruby
require 'spec_helper'

describe Puppet::Type.type(:dsc_xexchwaitformailboxdatabase) do

  let :dsc_xexchwaitformailboxdatabase do
    Puppet::Type.type(:dsc_xexchwaitformailboxdatabase).new(
      :name     => 'foo',
      :dsc_identity => 'foo',
    )
  end

  it 'should allow all properties to be specified' do
    expect { Puppet::Type.type(:dsc_xexchwaitformailboxdatabase).new(
      :name     => 'foo',
      :dsc_identity => 'foo',
      :dsc_credential => {"user"=>"user", "password"=>"password"},
      :dsc_adserversettingspreferredserver => 'foo',
      :dsc_domaincontroller => 'foo',
      :dsc_retryintervalsec => 32,
      :dsc_retrycount => 32,
    )}.to_not raise_error
  end

  it "should stringify normally" do
    expect(dsc_xexchwaitformailboxdatabase.to_s).to eq("Dsc_xexchwaitformailboxdatabase[foo]")
  end

  it 'should require that dsc_identity is specified' do
    #dsc_xexchwaitformailboxdatabase[:dsc_identity]
    expect { Puppet::Type.type(:dsc_xexchwaitformailboxdatabase).new(
      :name     => 'foo',
    )}.to raise_error(Puppet::Error, /dsc_identity is a required attribute/)
  end

  it 'should not accept array for dsc_identity' do
    expect{dsc_xexchwaitformailboxdatabase[:dsc_identity] = ["foo", "bar", "spec"]}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept boolean for dsc_identity' do
    expect{dsc_xexchwaitformailboxdatabase[:dsc_identity] = true}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept int for dsc_identity' do
    expect{dsc_xexchwaitformailboxdatabase[:dsc_identity] = -16}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept uint for dsc_identity' do
    expect{dsc_xexchwaitformailboxdatabase[:dsc_identity] = 16}.to raise_error(Puppet::ResourceError)
  end

  it "should not accept empty password for dsc_credential" do
    expect{dsc_xexchwaitformailboxdatabase[:dsc_credential] = {"user"=>"user", "password"=>""}}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept array for dsc_credential' do
    expect{dsc_xexchwaitformailboxdatabase[:dsc_credential] = ["foo", "bar", "spec"]}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept boolean for dsc_credential' do
    expect{dsc_xexchwaitformailboxdatabase[:dsc_credential] = true}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept int for dsc_credential' do
    expect{dsc_xexchwaitformailboxdatabase[:dsc_credential] = -16}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept uint for dsc_credential' do
    expect{dsc_xexchwaitformailboxdatabase[:dsc_credential] = 16}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept array for dsc_adserversettingspreferredserver' do
    expect{dsc_xexchwaitformailboxdatabase[:dsc_adserversettingspreferredserver] = ["foo", "bar", "spec"]}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept boolean for dsc_adserversettingspreferredserver' do
    expect{dsc_xexchwaitformailboxdatabase[:dsc_adserversettingspreferredserver] = true}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept int for dsc_adserversettingspreferredserver' do
    expect{dsc_xexchwaitformailboxdatabase[:dsc_adserversettingspreferredserver] = -16}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept uint for dsc_adserversettingspreferredserver' do
    expect{dsc_xexchwaitformailboxdatabase[:dsc_adserversettingspreferredserver] = 16}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept array for dsc_domaincontroller' do
    expect{dsc_xexchwaitformailboxdatabase[:dsc_domaincontroller] = ["foo", "bar", "spec"]}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept boolean for dsc_domaincontroller' do
    expect{dsc_xexchwaitformailboxdatabase[:dsc_domaincontroller] = true}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept int for dsc_domaincontroller' do
    expect{dsc_xexchwaitformailboxdatabase[:dsc_domaincontroller] = -16}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept uint for dsc_domaincontroller' do
    expect{dsc_xexchwaitformailboxdatabase[:dsc_domaincontroller] = 16}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept array for dsc_retryintervalsec' do
    expect{dsc_xexchwaitformailboxdatabase[:dsc_retryintervalsec] = ["foo", "bar", "spec"]}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept boolean for dsc_retryintervalsec' do
    expect{dsc_xexchwaitformailboxdatabase[:dsc_retryintervalsec] = true}.to raise_error(Puppet::ResourceError)
  end

  it 'should accept uint for dsc_retryintervalsec' do
    dsc_xexchwaitformailboxdatabase[:dsc_retryintervalsec] = 32
    expect(dsc_xexchwaitformailboxdatabase[:dsc_retryintervalsec]).to eq(32)
  end

  it 'should not accept signed (negative) value for dsc_retryintervalsec' do
    value = -32
    expect(value).to be < 0
    expect{dsc_xexchwaitformailboxdatabase[:dsc_retryintervalsec] = value}.to raise_error(Puppet::ResourceError)
  end

  it 'should accept string-like uint for dsc_retryintervalsec' do
    dsc_xexchwaitformailboxdatabase[:dsc_retryintervalsec] = '16'
    expect(dsc_xexchwaitformailboxdatabase[:dsc_retryintervalsec]).to eq(16)
  end

  it 'should accept string-like uint for dsc_retryintervalsec' do
    dsc_xexchwaitformailboxdatabase[:dsc_retryintervalsec] = '32'
    expect(dsc_xexchwaitformailboxdatabase[:dsc_retryintervalsec]).to eq(32)
  end

  it 'should accept string-like uint for dsc_retryintervalsec' do
    dsc_xexchwaitformailboxdatabase[:dsc_retryintervalsec] = '64'
    expect(dsc_xexchwaitformailboxdatabase[:dsc_retryintervalsec]).to eq(64)
  end

  it 'should not accept array for dsc_retrycount' do
    expect{dsc_xexchwaitformailboxdatabase[:dsc_retrycount] = ["foo", "bar", "spec"]}.to raise_error(Puppet::ResourceError)
  end

  it 'should not accept boolean for dsc_retrycount' do
    expect{dsc_xexchwaitformailboxdatabase[:dsc_retrycount] = true}.to raise_error(Puppet::ResourceError)
  end

  it 'should accept uint for dsc_retrycount' do
    dsc_xexchwaitformailboxdatabase[:dsc_retrycount] = 32
    expect(dsc_xexchwaitformailboxdatabase[:dsc_retrycount]).to eq(32)
  end

  it 'should not accept signed (negative) value for dsc_retrycount' do
    value = -32
    expect(value).to be < 0
    expect{dsc_xexchwaitformailboxdatabase[:dsc_retrycount] = value}.to raise_error(Puppet::ResourceError)
  end

  it 'should accept string-like uint for dsc_retrycount' do
    dsc_xexchwaitformailboxdatabase[:dsc_retrycount] = '16'
    expect(dsc_xexchwaitformailboxdatabase[:dsc_retrycount]).to eq(16)
  end

  it 'should accept string-like uint for dsc_retrycount' do
    dsc_xexchwaitformailboxdatabase[:dsc_retrycount] = '32'
    expect(dsc_xexchwaitformailboxdatabase[:dsc_retrycount]).to eq(32)
  end

  it 'should accept string-like uint for dsc_retrycount' do
    dsc_xexchwaitformailboxdatabase[:dsc_retrycount] = '64'
    expect(dsc_xexchwaitformailboxdatabase[:dsc_retrycount]).to eq(64)
  end

  # Configuration PROVIDER TESTS

  describe "powershell provider tests" do

    it "should successfully instanciate the provider" do
      described_class.provider(:powershell).new(dsc_xexchwaitformailboxdatabase)
    end

    before(:each) do
      @provider = described_class.provider(:powershell).new(dsc_xexchwaitformailboxdatabase)
    end

    describe "when dscmeta_module_name existing/is defined " do

      it "should compute powershell dsc test script with Invoke-DscResource" do
        expect(@provider.ps_script_content('test')).to match(/Invoke-DscResource/)
      end

      it "should compute powershell dsc test script with method Test" do
        expect(@provider.ps_script_content('test')).to match(/Method\s+=\s*'test'/)
      end

      it "should compute powershell dsc set script with Invoke-DscResource" do
        expect(@provider.ps_script_content('set')).to match(/Invoke-DscResource/)
      end

      it "should compute powershell dsc test script with method Set" do
        expect(@provider.ps_script_content('set')).to match(/Method\s+=\s*'set'/)
      end

    end

    describe "when dsc_resource has credentials" do

      it "should convert credential hash to a pscredential object" do
        expect(@provider.ps_script_content('test')).to match(/| new-pscredential'/)
      end

    end


  end
end
