(
  rm -rf _site
  bundle exec jekyll build
  rm -rf /tmp/_site
  cp -a _site /tmp
  git checkout gh-pages
  rm -rf *
  cp -a /tmp/_site/* .
  git add .
  git commit -m "Update site"
  echo "PUSH NOW (manually)"
)