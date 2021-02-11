require "stringex"
class Jekyll < Thor
  desc "new", "create a new post"
  method_option :editor, :default => "subl"
  def new(*title)
    title = title.join(" ")
    date = Time.now.strftime('%Y-%m-%d')
    time = Time.now.strftime('%H:%M')
    filename = "_posts/#{date}-#{title.to_url}.markdown"

    if File.exist?(filename)
      abort("#{filename} already exists!")
    end

    puts "Creating new post: #{filename}"
    open(filename, 'w') do |post|
      post.puts "---"
      post.puts "layout: post"
      post.puts "title: \"#{title.gsub(/&/,'&amp;')}\""
      post.puts "permalink: /#{title.to_url}"
      post.puts "date: #{date} #{time} +0700"
      post.puts "categories: "
      post.puts "comments: true"
      post.puts "---"
      post.puts "Assalamu'alaikum Warahmatullah Wabarakatuh"
      post.puts ""
      post.puts "Bismillahirrahmanirrahim"
    end

    system(options[:editor], filename)
  end
end