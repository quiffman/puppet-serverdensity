require 'puppet/provider/package'
require 'uri'

# Ruby gems support.
Puppet::Type.type(:package).provide :sd_pip, :parent => :pip do

  has_feature :installable, :uninstallable, :upgradeable, :versionable, :install_options

  def self.pip_cmd
    return self.cmd
  end
  def self.cmd
    "/usr/share/python/sd-agent/bin/pip"
  end
end

#  vim: set ts=2 sw=2 tw=0 et:
