if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/xingfalawa/Advance-File-Share /Advance-File-Share
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Advance-File-Share
fi
cd /Advance-File-Share
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
