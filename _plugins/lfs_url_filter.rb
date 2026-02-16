module Jekyll
  module LFSURLFilter
    def lfs_url(path)
      env = Jekyll.env
      if env == "development"
	path
      else
        owner = ENV['REPO_OWNER'] || 'chr0nikler'
        repo = ENV['REPO_NAME'] || 'chr0nikler.github.io'
        branch = ENV['REPO_BRANCH'] || 'master'
        "https://media.githubusercontent.com/media/#{owner}/#{repo}/refs/heads/#{branch}#{path}"
      end
    end
  end
end
Liquid::Template.register_filter(Jekyll::LFSURLFilter)
