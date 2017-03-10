# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

run Rails.application

class ShowEnv
  def call(env)
    [ 200,                                          # ステータス(Integer)
      { 'Content-Type' => 'text/plain' },           # レスポンスヘッダ(Hash)
      env.keys.sort.map {|k| "#{k} = #{env[k]}\n" } # body(StringのArray)
    ]
  end
end

run ShowEnv.new
