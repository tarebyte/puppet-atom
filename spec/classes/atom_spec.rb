require 'spec_helper'

describe 'atom' do
  it do
    should contain_package('Atom').with({
      :ensure   => 'present',
      :provider => 'compressed_app',
      :flavor   => 'zip',
      :source   => 'https://atom.io/download/mac'
    })
  end
end
