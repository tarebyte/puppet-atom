require 'spec_helper'

describe 'atom' do
  it do
    should contain_package('Atom').with({
      :provider => 'compressed_app',
      :source   => 'http://atom.io/download/mac'
    })
  end
end
