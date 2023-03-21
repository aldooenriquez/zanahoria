class CreateBlogPosts < ActiveRecord::Migration[7.0]
  def change
    create_table "blog_posts", force: :cascade do |t|
      t.string "title", null: false
      t.string "subtitle"
      t.string "state", default: "draft", null: false
      t.string "content_url", null: false
      t.string "image_path", null: false
      t.string "publisher"
      t.datetime "published_at"

      t.timestamps
    end

    add_index "blog_posts",
              ["published_at"],
              name: "blog_posts_published_at_idx",
              using: :btree
    add_index "blog_posts",
              ["state"],
              name: "blog_posts_state_idx",
              using: :btree
    add_index "blog_posts",
              ["title"],
              name: "blog_posts_title_idx",
              using: :btree
  end
end
