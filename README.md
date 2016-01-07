# UMeditor for Rails Engine
UMeditor官网: [http://ueditor.baidu.com](http://ueditor.baidu.com)
Github: [https://github.com/fex-team/umeditor](https://github.com/fex-team/umeditor)

**Requirements**
---
* mini_magick
* carrierwave
* carrierwave-imageoptimizer


**Usage**
---
**Step-1:**

Put umeditor in your `Gemfile`:

```
gem 'umeditor', :git => 'git://github.com/ysllyfe/umeditor.git'
```

**Step-2:**

Edit `config/routes.rb`, add `Umeditor::Engine`:

```
Rails.application.routes.draw do
  ...
  mount Umeditor::Engine => "/"
  ...
end
```

**Step-3:**

View `app/views/**.html.erb`

```
<script type="text/javascript" id="editor"></script>
<%= umeditor_assets_call do |t|%>
<script>
var um = UM.getEditor('editor', {
  focus: true
});
</script>
<% end %>
```


