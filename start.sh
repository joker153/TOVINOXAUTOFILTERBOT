if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/joker153/Evamari12.git /Evamari12
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Evamari12
fi
cd /Evamari12
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
