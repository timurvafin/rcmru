require 'rubygems'
require 'bundler/setup'
require 'httparty'

module Rcmru
  class Index
    class Parser
      include HTTParty
      base_uri 'http://www.raiffeisen-capital.ru'
      format :xml

      attr_reader :response

      def initialize(found_id)
        yesterday = (Time.now - 1 * 60 * 60 * 24).strftime('%d.%m.%Y')
        self.class.default_params :fund_id => found_id, :BeginDate => yesterday, :EndDate => yesterday

        @response = self.class.get('/flash/getparams.aspx')
      end


    end

    def initialize(found_id)
      @found_id = found_id
      @data = Parser.new(found_id).response['datas']['data']
    end

    def pai
      @data.last['content'].strip.to_f
    end
  end
end