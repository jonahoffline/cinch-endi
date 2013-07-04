# encoding: utf-8
require 'cinch'
require 'endi_feed'

module Cinch
  module Plugins
    # @author Jonah Ruiz <jonah@pixelhipsters.com>
    # Endi is a Cinch plugin for getting the latest news from endi.com
    class Endi
      include Cinch::Plugin

      listen_to :channel

      # Listens to channel and calls :get_news
      # @param msg [Object] internal object provided by Cinch
      # @return [String] formatted news to IRC channel
      def listen(msg)
        total = total_news(msg)
        get_news(total).each { |headline| msg.reply(headline) } if total
      end

      # Delegates to EndiFeed.get_news
      # @return [Array<String>] news headlines
      def get_news(total)
        EndiFeed.get_news(total)
      end

      # Gets the total of news to fetch
      # @return [Integer] total of news to fetch
      def total_news(msg)
        any_arg?(msg) || no_args?(msg)
      end

      # Returns the total of news when there is a match
      # @return [Integer] total of news to fetch
      def any_arg?(msg)
        $1 if !!(/^!endi (.+)$/ =~ msg.message)
      end

      # Returns the default total when there is a match
      # @return [Integer] default total of news to fetch
      def no_args?(msg)
        25 if !!(/^!endi/ =~ msg.message)
      end
    end
  end
end