(
  rm -rf _site
  bundle exec jekyll build
  rm -rf /tmp/_site
  cp -a _site /tmp
  git checkout gh-pages
  cp -a /tmp/_site/* .
  git add .
  git commit -m "Update site"
  git push origin gh-pages
)