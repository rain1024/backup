for file in `cat config`
do
echo "Copy $file"
cp $file -t dotfiles/
done
echo $(date +"%H:%M:%S %d-%m-%Y") >> log
git add -A
git commit -m "backup"
git push origin master
