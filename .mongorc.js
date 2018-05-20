host = db.serverStatus().host;
cmdCount = 1;

prompt = function() {
         return new Date().toLocaleTimeString() + "|" + "Documents: " + db.stats().objects + "|" + db + "@" + host + "$ ";
}
