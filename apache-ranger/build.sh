echo "Builing a new instance of Apache Ranger"

# echo "going into ranger directory"
cd ranger

echo "Building from source"
mvn clean package -DskipJSTests -DskipTests assembly:assembly
mvn eclipse:eclipse

echo "Copying binaries"
rm -rf ../binaries/*
cp target/ranger-2.1.0-SNAPSHOT-tagsync.tar.gz ../binaries
cp target/ranger-2.1.0-SNAPSHOT-usersync.tar.gz ../binaries
cp target/ranger-2.1.0-SNAPSHOT-admin.tar.gz ../binaries