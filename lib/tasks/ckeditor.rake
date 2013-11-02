# https://github.com/galetahub/ckeditor
# Usage with Rails 4 assets
# => to resolve rails 4 production not require digest assets.
namespace :ckeditor do
  def copy_assets(regexp)
    Rails.application.assets.each_logical_path(regexp) do |name, path|
      asset = Rails.root.join('public', 'assets', name)
      p "Copy #{path} to #{asset}"
      FileUtils.cp path, asset
    end
  end

  desc 'Copy ckeditor assets, that cant be used with digest'
  task copy_nondigest_assets: :environment do
    copy_assets /ckeditor\/contents.css/
    copy_assets /ckeditor\/skins\/moono\/.+png/
  end
end