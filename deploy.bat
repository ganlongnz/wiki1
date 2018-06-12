rm -rf output
mkdir output
git clone -b gh-pages https://github.com/ganlongnz/wiki1 output/.
git add -A
git commit -m "edit master"
git pull origin master
git push origin master

simiki g
cd output
sed -i  's#href="/static#href="./static#g' index.html
#find ./ -type f -exec sed -i -e 's:href="/static:href="../static:g' {} \;
cd search
sed -i  's#href="/static#href="../static#g' *
cd ..

git add -A
git commit -m "upload gh-pages"
git pull origin gh-pages
git push origin gh-pages
cd ..
