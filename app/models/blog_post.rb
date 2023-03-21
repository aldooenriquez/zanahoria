class BlogPost < ApplicationRecord
  extend FriendlyId

  validates :title, presence: true
  validates :content_url, presence: true
  validates :state, inclusion: { in: %w[draft published] }
  validates :publisher, presence: true, if: :published?
  validates :published_at, presence: true, if: :published?
  validates :image_path, presence: true

  friendly_id :title, use: [:slugged]

  paginates_per 8

  def published?
    state == "published"
  end

  ##
  # Fetches the content from the github
  #
  def content
    client =
      Octokit::Client.new(
        access_token: Rails.application.credentials.gh_blog_access_token,
      )
    client.contents(
      "iamzanahoria/blog_contents",
      path: content_url,
      accept: "application/vnd.github.v3.html",
    )
  end
end
