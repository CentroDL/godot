#  bash <(curl -sL https://raw.githubusercontent.com/ga-students/godot/master/git_repo_setup_script.sh)

#################################################################################################################
# Note: This script presupposes that the user has reverted to a trashed commit that has all of their week 1 work.
#################################################################################################################

# grabs SSH clone url for fork, which we'll use to set up new repos
cd ~/dev/wdi/godot
export origin_url=$(git config --get remote.origin.url)

# moves obsolete repo to desktop and renames it
mv ~/dev/wdi/godot ~/Desktop/
mv ~/Desktop/godot ~/Desktop/wdi_godot_week_one

# clones the user's fork down
cd ~/dev/wdi
git clone $(echo $origin_url)

cd ~/dev/wdi/godot/
git remote add upstream git@github.com:ga-students/godot.git



