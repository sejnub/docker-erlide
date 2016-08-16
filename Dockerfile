FROM erlang:19.0.3

RUN echo "deb http://httpredir.debian.org/debian jessie-backports main" >> /etc/apt/sources.list

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y openjdk-8-jre openjdk-8-jdk openjdk-8-demo openjdk-8-doc openjdk-8-jre-headless openjdk-8-source 

RUN cd /tmp &&  \
	wget http://172.17.0.3/eclipse.tar.gz && \
	tar -zxvf eclipse.tar.gz --directory /opt/


RUN echo "Installing Erlide IDE Feature..." && \
	/opt/eclipse/eclipse -clean -purgeHistory \
	-application org.eclipse.equinox.p2.director \
	-noSplash \
	-repository http://download.erlide.org/update \
	-installIUs org.erlide.feature.group

CMD /opt/eclipse/eclipse

#real download url http://eclipse.bluemix.net/packages/neon/data/eclipse-java-neon-R-linux-gtk-x86_64.tar.gz


