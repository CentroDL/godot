#  bash <(curl -sL https://raw.githubusercontent.com/ga-instructors/installfest_script/master/builds/mac)

#################################################################################################################
# Note: This script presupposes that the user has reverted to a trashed commit that has all of their week 1 work.
#################################################################################################################

# grabs SSH clone url for fork, which we'll use to set up new repos
cd ~/dev/wdi/godot
export origin_url=$(git config --get remote.origin.url)

# moves obsolete repo to desktop and renames it
mv ~/dev/wdi/godot ~/Desktop/wdi_godot_week_one

# clones the user's fork down
cd ~/dev/wdi
git clone $origin_url

cd ~/dev/wdi/godot/
git remote add upstream git@github.com:ga-students/godot.git
git pull upstream master



