FROM java:8-jdk
# copy program to image
ADD jingxishop.jar /usr/local/jingxishop.jar
ADD wait-for-it.sh /usr/local/wait-for-it.sh
# automatically run server while mysql has fully started
CMD  /usr/local/wait-for-it.sh jingxi-mysql:3306 -- java -jar /usr/local/jingxishop.jar --spring.profiles.active=test