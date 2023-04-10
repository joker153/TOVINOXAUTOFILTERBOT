if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/joker153/TOVINOXAUTOFILTERBOT.git /TOVINOXAUTOFILTERBOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /TOVINOXAUTOFILTERBOT
fi
cd /TOVINOXAUTOFILTERBOT
pip3 install -U -r requirements.txt
echo "Starting TOVINOXAUTOFILTERBOT...."
python3 bot.py
