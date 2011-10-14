#
# Cookbook Name:: zend
# Recipe:: default
#
# Copyright 2011, Heavy Water Software Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe "apt"

apt_repository "zend" do
  uri "http://repos.zend.com/zend-server/deb"
  distribution "server"
  components [ "non-free" ]
  key "http://repos.zend.com/zend.key"
  action :add
end

package "zend-server-ce-php-#{node[:zend][:php][:version]}"

service "zend" do
  service_name "zend-server"
  supports :status => true, :restart => true
  action [ :enable, :start ]
end
