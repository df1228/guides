git submodule update
hugo --baseURL=/guides/
cd public && git add --all && git commit -m "Publishing to gh-pages with hugo --baseURL=/guides/" && cd ..
git push upstream gh-pages