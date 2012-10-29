# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rightscaler}
  s.version = "0.1.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Joshua Bates"]
  s.date = %q{2011-04-14}
  s.email = %q{joshuabates@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.markdown"
  ]
  s.files = [
    "LICENSE",
    "README.markdown",
    "Rakefile",
    "VERSION.yml",
    "lib/rightscaler.rb",
    "lib/rightscaler/account.rb",
    "lib/rightscaler/design.rb",
    "lib/rightscaler/design/credential.rb",
    "lib/rightscaler/design/macro.rb",
    "lib/rightscaler/design/right_script.rb",
    "lib/rightscaler/design/server_template.rb",
    "lib/rightscaler/manage.rb",
    "lib/rightscaler/manage/alert_specification.rb",
    "lib/rightscaler/manage/deployment.rb",
    "lib/rightscaler/manage/ec2_ebs_snapshot.rb",
    "lib/rightscaler/manage/ec2_ebs_volume.rb",
    "lib/rightscaler/manage/ec2_elastic_ip.rb",
    "lib/rightscaler/manage/ec2_security_group.rb",
    "lib/rightscaler/manage/ec2_ssh_key.rb",
    "lib/rightscaler/manage/server.rb",
    "lib/rightscaler/manage/status.rb",
    "lib/rightscaler/resource.rb",
    "rightscaler.gemspec",
    "test/test_helper.rb"
  ]
  s.homepage = %q{http://github.com/joshuabates/rightscaler}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.1}
  s.summary = %q{An ActiveResource interface to the Rightscale API}
  s.test_files = [
    "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activeresource>, ["~> 2.3.0"])
    else
      s.add_dependency(%q<activeresource>, ["~> 2.3.0"])
    end
  else
    s.add_dependency(%q<activeresource>, ["~> 2.3.0"])
  end
end

