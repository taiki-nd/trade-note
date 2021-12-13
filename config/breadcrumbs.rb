crumb :root do
  link "Top", root_path
end

# user-------------------------------------------------------

crumb :user_signup do
  link "ユーザー登録", new_user_registration_path
  parent :root
end

crumb :user_signin do
  link "ログイン", new_user_session_path
  parent :root
end

crumb :user_show do |user|
  link "ユーザー詳細ページ", users_show_path
  parent :root
end

  crumb :user_record do |user|
    link "ユーザーTrade-Note", users_record_path
    parent :user_show, user
  end

  crumb :user_records do |user|
    link "ユーザー取引履歴一覧", users_records_path
    parent :user_show, user
  end

  crumb :user_posts do |user|
    link "ユーザー記事一覧", users_post_path
    parent :user_show, user
  end

  crumb :user_posts_draft do |user|
    link "ユーザー下書き記事", users_post_draft_path
    parent :user_show, user
  end

  crumb :user_edit do |user|
    link "登録情報の編集", users_edit_path
    parent :user_show, user
  end

  crumb :user_followers do |user|
    link "フォロワー", followers_path
    parent :user_show, user
  end

  crumb :user_followings do |user|
    link "フォロー", followings_path
    parent :user_show, user
  end

# record-------------------------------------------------------

crumb :records_index do
  link "Trade-Note", records_path
  parent :root
end

  crumb :record_show do
    link "Trade-Note詳細", record_path
    parent :records_index
  end

    crumb :record_edit do
      link "Trade-Noteの編集", edit_record_path
      parent :record_show
    end
  
  crumb :record_search do
    link "Trade-Noteの検索結果", search_records_path
    parent :records_index
  end

crumb :record_new do
  link "新規Trade-Note", new_record_path
  parent :root
end

# post-------------------------------------------------------

crumb :posts_index do
  link "記事一覧", posts_path
  parent :root
end

  crumb :post_show do
    link "記事詳細", post_path
    parent :posts_index
  end

    crumb :post_edit do
      link " 記事の編集", edit_post_path
      parent :post_show
    end
  
  crumb :post_search do
    link "記事の検索結果", search_posts_path
    parent :posts_index
  end

crumb :post_new do
  link "新規記事", new_post_path
  parent :root
end

# static page ----------------------------------------------

crumb :disclaimer  do
  link "免責事項", disclaimer_path
  parent :root
end

crumb :privacy_policy  do
  link "プライバシーポリシー", privacy_policy_path
  parent :root
end

# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).