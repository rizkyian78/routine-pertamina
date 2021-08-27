MONGO_DATABASE="directBuying"
APP_NAME="dump_pertamina"

MONGO_HOST="127.0.0.1"
MONGO_PORT="27017"
TIMESTAMP=`date +%d-%m-%Y`
MONGODUMP_PATH="/usr/bin/mongodump"
BACKUPS_DIR="/home/rizkyian78/routine_telkom/$APP_NAME"
BACKUP_NAME="$APP_NAME-$TIMESTAMP"
 
# mongo admin --eval "printjson(db.fsyncLock())"
# $MONGODUMP_PATH -h $MONGO_HOST:$MONGO_PORT -d $MONGO_DATABASE
# $MONGODUMP_PATH -d $MONGO_DATABASE
# mongo admin --eval "printjson(db.fsyncUnlock())"
 
# mv dump $BACKUP_NAME
mongodump --host 13.250.19.123 --port 27017 -u nusantech -p '#Nu5anT3ch!!123' --authenticationDatabase admin --db directBuying --out=../dump_pertamina/$BACKUP_NAME --forceTableScan
# mongodump --db directBuying --out=dump_pertamina/$BACKUP_NAME
# tar -zcvf $BACKUPS_DIR/$BACKUP_NAME.tgz $BACKUP_NAME
rm -rf $BACKUP_NAME