# git-and-github-final-assignment

DIR=git-and-github/assignment
FOLDER=dumy_folder
mkdir $FOLDER
cd $FOLDER;

mkdir -p $DIR;
for i in {1..100}; do dd if=/dev/urandom bs=1 count=1 of=$DIR/dummy-file$i.mp3; done

aws s3 sync . s3://bucket-from-sync --profile profile_name
rm -rf ../$FOLDER
echo "Done dummy data!"
