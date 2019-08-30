# 1. Install Ruby
```bash
brew install ruby
```
```bash
touch ~/.bash_profile
```
put in .bash_profile the following line
`export PATH=/usr/local/Cellar/ruby/[ruby version, such as 2.6.3]/bin:$PATH`

```bash
source ~/.bash_profile
```
# 2. Create a Website
```bash
jekyll new WEBSITE_NAME
```

# 2. Serve the Website (Preview)
* for the first time 
```bash
bundle exec jekyll serve
```
* then
```bash
jekyll serve
```

Default server address `http://127.0.0.1:4000/`
# 3. Post Front Matter
in the beginning of every post page in `_posts`
either YAML or JSON
custom front matter can be added
# 4. Post Naming Convention
YYYY-MM-DD-post-name.md
Date will be reflected in the web address.
# 5. Drafts
create `_drafts` folder
create new .md files within _drafts folder.
preview draft posts using `jekyll serve --draft`
no need to follow post-naming convention for the draft anything will do.
drafts are served with current date in the web address
# 6. Pages
pages are in the root directory
# 7. URL Convention
reflects the _site folder structure
http://127.0.0.1:4000/YYYY/MM/DD/post-name.html
it depends on front matter and the name of the file, which is annoying
to control it one can define `permalink` variable within front matter
https://www.youtube.com/watch?v=938jDG_YPdc&list=PLLAZ4kZ9dFpOPV5C5Ay0pHaa0RJFhcmcB&index=9
# 8. Default Front Matter
[video link](https://www.youtube.com/watch?v=CLCaJJ1zUHU&list=PLLAZ4kZ9dFpOPV5C5Ay0pHaa0RJFhcmcB&index=10)
[reference](https://jekyllrb.com/docs/configuration/front-matter-defaults/)
_config.yml
defaults:
 -
  scope:
   path:
  values:
# 9. Themes in Jekyll
_config.yml under `build settings`
theme: minima (default theme)
[jekyll themes A](https://rubygems.org/)
[jekyll themes B](https://jekyllthemes.io/)
* add necessary line to Gemfile

e.g. `gem "jekyll-theme-lanyon", "~> 1.1"`
* add name of a theme to gem file

```bash
bundle install
```
* edit config.yaml

e.g. `theme: jekyll-theme-lanyon`
update _config.yml (change theme minima to a new theme)
# 10. Layouts
create new folder `_layouts`
[reference](https://www.youtube.com/watch?v=bDQsGdCWv4I)
# 11. Assets
store in some folder, such as `assets`
# 12. Serve a Website on GitHub
create a new repository on GitHub
do NOT initialise with README.md
in config.yml add `baseurl`, i.e. the name of GitHub repository with a website
in terminal from the website directory
```bash
git init
```
checkout new branch
```bash
git checkout -b new_branch
```
add and commit all the files
```bash
git remote get origin
```

