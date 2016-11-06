echo '-----------------------'
echo ' updating vim plugins  '
echo '-----------------------'

cd ~/.vim/bundle
for i in `ls`; do
  cd "$i"
  echo "Updateing - `pwd`"
  git pull 
  cd ..
done

echo '------------------------'
echo ' all done '
echo '------------------------'
