Given /the following article exists/ do |article_table|
	article_table.hashes.each do |article|
		Article.create(article)
	end
end

Given /^the blog is set up for non admin $/ do
  Blog.default.update_attributes!({:blog_name => 'Meg Blag',
                                   :base_url => 'http://localhost:3000'});
  Blog.default.save!
  User.create!({:login => 'non admin',
                :password => 'aaaaaaaa',
                :email => 'joe@snow.com',
                :profile_id => 1,
                :name => 'non admin',
                :state => 'active'})
end

And /^I am logged into a non admin panel$/ do
  visit '/accounts/login'
  fill_in 'user_login', :with => 'non admin'
  fill_in 'user_password', :with => 'aaaaaaaa'
  click_button 'Login'
  if page.respond_to? :should
    page.should have_content('Login successful')
  else
    assert page.has_content?('Login successful')
  end
end