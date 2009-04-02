# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rightscaler}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Joshua Bates"]
  s.date = %q{2009-04-02}
  s.email = %q{joshuabates@gmail.com}
  s.extra_rdoc_files = ["README.markdown", "LICENSE"]
  s.files = ["README.markdown", "VERSION.yml", "lib/rightscaler", "lib/rightscaler/account.rb", "lib/rightscaler/design", "lib/rightscaler/design/credential.rb", "lib/rightscaler/design/macro.rb", "lib/rightscaler/design/right_script.rb", "lib/rightscaler/design/server_template.rb", "lib/rightscaler/design.rb", "lib/rightscaler/manage", "lib/rightscaler/manage/alert_specification.rb", "lib/rightscaler/manage/deployment.rb", "lib/rightscaler/manage/ec2_ebs_snapshot.rb", "lib/rightscaler/manage/ec2_ebs_volume.rb", "lib/rightscaler/manage/ec2_elastic_ip.rb", "lib/rightscaler/manage/ec2_security_group.rb", "lib/rightscaler/manage/ec2_ssh_key.rb", "lib/rightscaler/manage/server.rb", "lib/rightscaler/manage/status.rb", "lib/rightscaler/manage.rb", "lib/rightscaler/resource.rb", "lib/rightscaler.rb", "test/test_helper.rb", "LICENSE"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/joshuabates/rightscaler}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{TODO}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<active_resource>, [">= 0"])
    else
      s.add_dependency(%q<active_resource>, [">= 0"])
    end
  else
    s.add_dependency(%q<active_resource>, [">= 0"])
  end
end
