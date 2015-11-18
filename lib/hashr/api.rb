require 'digest'

module Hashr
  class API < Grape::API
    version 'v1', using: :param
    format :json

    resource :md5 do
      desc 'Create an MD5 hash' do
        detail 'Return the MD5 hash of the provided data'
      end
      params do
        requires :data, :documentation => { :param_type => 'string' }
      end
      post do
        begin
          hash = HashFactories::MD5Factory.build(params[:data])
          status 200
          {
            :hash => hash
          }
        rescue RuntimeError => error
          status 500
        end
      end
    end

    add_swagger_documentation :mount_path => '/swagger.json'
  end
end
