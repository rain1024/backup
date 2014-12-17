for file in `cat config`
do
echo "Copy $file"
cp $file -t dotfiles/
done
git add -A
git commit -m "backup"
git push origin master
echo $(date +"%H:%M:%S %d-%m-%Y") >> log
