module Messie

  # a crawled response
  class Response
    attr_reader :code, :body, :time, :headers, :uri

    # factory method to create from net/http response
    def self.create(uri, response, response_time)
      headers = {}
      response.each_header do |key, value|
        headers[key.to_s.downcase.gsub('-', '_').to_sym] = value
      end

      self.new({
        :uri  => uri,
        :time => response_time.to_f,
        :body => response.body,
        :code => response.code.to_i,
        :headers => headers
      })
    end

    #
    def initialize(data={})
      @uri = data[:uri]
      @code = data[:code]
      @time = data[:time]
      @body = data[:body]
      @headers = data[:headers]
    end

    # convert to a hash
    def to_h
      {
        :uri  => @uri,
        :code => @code,
        :body => @body,
        :time => @time,
        :headers => @headers
      }
    end
  end
end