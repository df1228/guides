git submodule update
hugo --baseURL=/blog/
cd public && git add --all && git commit -m "Publishing to gh-pages with hugo --baseURL=/blog/" && cd ..
git push origin gh-pages
