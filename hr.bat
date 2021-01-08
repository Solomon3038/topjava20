call mvn -B -s settings.xml -DskipTests=true clean package
call java -Dspring.profiles.active="datajpa,heroku" -DDATABASE_URL="postgres://wladi:waldemar30@localhost:5432/topjava22" -jar target/dependency/webapp-runner.jar target/*.war
