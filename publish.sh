#! /bin/bash
base_dir=$www
if [ -z "$base_dir" ]; then echo "$0: must set base_dir!" 1>&2 ; exit 1 ; fi

cd "$base_dir"
echo "should delete data?" 
echo "yes..."
rm -rf docs
hugo
git add -A
git commit -a -m "wy-cs site update $(date +'%Y-%m-%d %H:%M')"
#git push -u gh-pages master
git push -u backdoor master
