!#/bin/bash
# 
# There are examples of running command in shell

# runs spark-submit with files from hdfs: and file: systems
spark-submit --class SparkWordCount --master local[2] --deploy-mode client \
--executor-memory 1g --name wordcount --conf "spark.app.id=wordcount" \
./target/sparkwordcount2-0.0.1-SNAPSHOT.jar hdfs://cloudera.quickstart:8020/home/cloudera/test.tsv 2
# with file: local filesystem
file:/home/cloudera/test.tsv

# runs spark-submit job with simpleSparkApp.scala
spark-submit --class "SimpleApp" --master local[4] target/sparkwordcount-0.0.1-SNAPSHOT.jar

# runs spark-submit job with fromClouderaApp.scala
<<<<<<< HEAD
# looks like inputfile.txt was taken from local filesystem
spark-submit --class SparkWordCount --master local[2] --deploy-mode client --executor-memory 1g --name wordcount --conf "spark.app.id=wordcount" ./target/sparkwordcount2-0.0.1-SNAPSHOT.jar inputfile.txt 2
=======
spark-submit --class SparkWordCount --master local[2] \ 
--deploy-mode client --executor-memory 1g --name wordcount \
--conf "spark.app.id=wordcount" \
./target/sparkwordcount2-0.0.1-SNAPSHOT.jar inputfile.txt 2
>>>>>>> 1a6108dbf995d331928c546fce0065e0185ea078
