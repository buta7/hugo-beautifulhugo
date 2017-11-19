HOST=kessel.oroshi.toyoake.or.jp
PORT=5000

all: clean gen run

run:
	hugo server --bind="0.0.0.0" --baseUrl="${HOST}" --port=${PORT} --watch

gen:
	hugo

clean:
	rm -fr public/*

deploy:
	sh deploy.sh
