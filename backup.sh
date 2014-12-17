cd /home/rain/Works/backup/
for file in `cat config`
do
cp $file -t dotfiles/
done
echo $(date +"%H:%M:%S %d-%m-%Y") >> log
git add -A
git commit -m "backup"
git push origin master
