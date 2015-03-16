# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
Blog.create(:id => 1, :settings => {"canonical_server_url"=>""}, :base_url => "http://example.com/")
Category.create(:id => 1, :name => "General", :permalink => "general", :position => 1)
Profile.create(:id => 1, :label => "admin", :modules => [:dashboard, :articles, :pages, :media, :feedback, :themes, :sidebar, :users, :settings, :profile, :seo], :nicename => "Typo administrator")
Profile.create(:id => 2, :label => "publisher", :modules => [:dashboard, :articles, :media, :pages, :feedback, :profile], :nicename => "Blog publisher")
Profile.create(:id => 3, :label => "contributor", :modules => [:dashboard, :profile], :nicename => "Contributor")
Right.create(:description => "Global administration", :id => 1, :name => "admin")
Right.create(:description => "Create article", :id => 2, :name => "content_create")
Right.create(:description => "Edit article", :id => 3, :name => "content_edit")
Right.create(:description => "Delete article", :id => 4, :name => "content_delete")
Right.create(:description => "Create a category", :id => 5, :name => "category_create")
Right.create(:description => "Edit a category", :id => 6, :name => "category_edit")
Right.create(:description => "Delete a category", :id => 7, :name => "category_delete")
Right.create(:description => "Create a category", :id => 8, :name => "page_create")
Right.create(:description => "Edit a category", :id => 9, :name => "page_edit")
Right.create(:description => "Delete a category", :id => 10, :name => "page_delete")
Right.create(:description => "Add a comment", :id => 11, :name => "feedback_create")
Right.create(:description => "Edit self comments", :id => 12, :name => "feedback_self_edit")
Right.create(:description => "Edit any comment", :id => 13, :name => "feedback_edit")
Right.create(:description => "Delete self comments", :id => 14, :name => "feedback_self_delete")
Right.create(:description => "Delete any comment", :id => 15, :name => "feedback_delete")
Right.create(:description => "Create users", :id => 16, :name => "user_create")
Right.create(:description => "Edit users", :id => 17, :name => "user_edit")
Right.create(:description => "Edit self account", :id => 18, :name => "user_self_edit")
Right.create(:description => "Delete users", :id => 19, :name => "user_delete")
Sidebar.create(:active_position => 0, :config => {"maximum_pages"=>"10"}, :id => 1, :staged_position => 0, :type => "PageSidebar")
Sidebar.create(:active_position => 1, :config => {"empty"=>false, "count"=>true}, :id => 2, :staged_position => 1, :type => "CategorySidebar")
Sidebar.create(:active_position => 2, :config => {"show_count"=>true, "count"=>"10"}, :id => 3, :staged_position => 2, :type => "ArchivesSidebar")
Sidebar.create(:active_position => 3, :config => {"body"=>"<ul>\n  <li><a href=\"http://www.typosphere.org\" title=\"Typo\">Typosphere</a></li>\n  <li><a href=\"http://typogarden.org\">Typogarden</a></li>\n  <li><a href=\"http://t37.net\" title=\"Blog Exp\xC3\xA9rience utilisateur\">Fr\xC3\xA9d\xC3\xA9ric</a></li>\n  <li><a href=\"http://www.matijs.net/\" title=\"Matijs\">Matijs</a></li>\n<li><a href=\"http://elsif.fr\" title=\"Yannick\">Yannick</a></li>\n<li><a href=\"http://blog.ookook.fr\" title=\"Thomas\">Thomas</a></li>\n<li><a href=\"http://blog.shingara.fr\" title=\"Cyril\">Cyril</a></li>\n\n\
        </ul>\n", "title"=>"Links"}, :id => 4, :staged_position => 3, :type => "StaticSidebar")
Sidebar.create(:active_position => 4, :config => {"title"=>"Meta"}, :id => 5, :staged_position => 4, :type => "MetaSidebar")
TextFilter.create(:description => "None", :filters => [], :id => 1, :markup => "none", :name => "none", :params => {})
TextFilter.create(:description => "Markdown", :filters => [], :id => 2, :markup => "markdown", :name => "markdown", :params => {})
TextFilter.create(:description => "SmartyPants", :filters => [:smartypants], :id => 3, :markup => "none", :name => "smartypants", :params => {})
TextFilter.create(:description => "Markdown with SmartyPants", :filters => [:smartypants], :id => 4, :markup => "markdown", :name => "markdown smartypants", :params => {})
TextFilter.create(:description => "Textile", :filters => [], :id => 5, :markup => "textile", :name => "textile", :params => {})
Article.create(:allow_comments => true, :allow_pings => true, :author => "Mr Typo", :body => "Welcome to Typo. This is your first article. Edit or delete it, then start blogging!", :guid => "1bf3e2ca-ed7b-4562-8a4a-8ce8438822c8", :id => 1, :permalink => "hello-world", :post_type => "read", :published => true, :published_at => "2012-06-09 21:51:55 UTC", :settings => {"password"=>""}, :state => "published", :text_filter_id => 5, :title => "Hello World!", :type => "Article", :user_id => 1)
Page.create(:body => "This is an example of a Typo page. You can edit this to write information about yourself or your site so readers know who you are. You can create as many pages as this one as you like and manage all of your content inside Typo.", :id => 2, :name => "about", :post_type => "read", :published => true, :published_at => "2012-06-09 21:51:55 UTC", :settings => {"password"=>""}, :state => "published", :text_filter_id => 5, :title => "about", :type => "Page", :user_id => 1)





#Article.create(:allow_comments => true, :allow_pings => true, :author => "Mr Typozium", :body => "Welcome to Typozium. This is your second article. Edit or delete it, then start blogging!", :guid => "1bf3e2ca-ed7b-4562-8a4a-8ce8438822c82223", :id => 3, :permalink => "hello-world", :post_type => "read", :published => true, :published_at => "2012-06-09 21:51:55 UTC", :settings => {"password"=>""}, :state => "published", :text_filter_id => 5, :title => "Hello World!", :type => "Article", :user_id => 2)