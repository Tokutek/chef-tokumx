#
# Cookbook Name:: tokumx
# Recipe:: tokutek_repo
#
# Copyright 2014, Tokutek
# Authors:
#       John Esmet <john.esmest@gmail.com>
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

case node['platform_family']
when "debian"
  apt_repository "tokutek" do
    uri "http://s3.amazonaws.com/tokumx-debs"
    arch "amd64"
    distribution "precise"
    components ["main"]
    keyserver "hkp://keyserver.ubuntu.com:80"
    key "505A7412"
    action :add
  end
else
  Chef::Log.warn("Only debian/ubuntu is supported for now")
end
