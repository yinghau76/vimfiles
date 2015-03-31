sed '/## auto-generated/q' ../vimrc > vimrc-new
awk 'FNR==1 {print "\n\" ## " FILENAME " ##\n"}{print}' *.vim >> vimrc-new
cat vimrc-new > ../vimrc
rm vimrc-new
