require 'bundler/setup'
require 'sinatra/base'
require 'rack-rewrite'

# The project root directory
$root = ::File.dirname(__FILE__)

use Rack::Rewrite do
  r301 %r{^/geolocation-and-using-github-downloads-to-man$},  '/blog/using-github-downloads-for-private-dependencies-bonus-geolocation/'
  r301 %r{^/on-postal-codes$},                                '/blog/on-postal-codes/'
  r301 %r{^/the-new-best-travel-story-ever-jetblue-big-bu$},  '/blog/the-new-best-travel-story-ever-jetblue/'
  r301 %r{^/7-reasons-why-im-blogging-and-why-you-should$},   '/blog/7-reasons-why-i-blog-and-why-you-should-too/'
  r301 %r{^/one-direction-these-kids-can-sing$},              '/blog/2009/05/27/memorial-cup-2009/'
  r301 %r{^/napping-in-traffic$},                             '/blog/2009/05/27/memorial-cup-2009/'
  r301 %r{^/uruguayargentina-reflection$},                    '/blog/2009/05/27/memorial-cup-2009/'
  r301 %r{^/power-plug-spanish-attempt$},                     '/blog/2009/05/27/memorial-cup-2009/'
end


class SinatraStaticServer < Sinatra::Base

  get(/.+/) do
    send_sinatra_file(request.path) {404}
  end

  not_found do
    send_sinatra_file('404.html') {"Sorry, I cannot find #{request.path}"}
  end

  def send_sinatra_file(path, &missing_file_block)
    file_path = File.join(File.dirname(__FILE__), 'public',  path)
    file_path = File.join(file_path, 'index.html') unless file_path =~ /\.[a-z]+$/i
    File.exist?(file_path) ? send_file(file_path) : missing_file_block.call
  end

end

run SinatraStaticServer
