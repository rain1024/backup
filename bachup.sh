for file in `cat config`
do
cp $file -t dotfiles/
done
git add -A
git commit -m "backup"
git push origin master
