FROM	alpine

MAINTAINER ilkou <oouklich@student.1337.ma>

RUN	apk update && \
	apk upgrade && \
	apk add build-base git vim

RUN git clone https://github.com/42Paris/minilibx-linux mlx && \
	apk add libxext-dev && \
	apk add libbsd-dev

RUN	cd mlx; ./configure && \
	cp libmlx.a /usr/local/lib/ && \
	mkdir /usr/local/include && \
	cp mlx.h /usr/local/include/mlx.h

ENTRYPOINT echo -e "Check https://github.com/ilkou/minilibx for more notes !\nHappy coding ^^"; /bin/sh
