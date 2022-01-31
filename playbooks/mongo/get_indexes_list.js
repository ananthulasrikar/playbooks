db.getCollectionNames().forEach(function(collection) {
   indexes = db[collection].getIndexes();
   printjson(indexes);
});
