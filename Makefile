produce:
	git pull
	curl -o delegated-apnic-latest https://ftp.apnic.net/stats/apnic/delegated-apnic-latest
	curl -o china_ip_list.txt https://raw.githubusercontent.com/mayaxcn/china-ip-list/refs/heads/master/chnroute.txt
	python3 produce.py
	mv routes4.conf /etc/routes4.conf
	# mv routes6.conf /etc/routes6.conf
	birdc4 configure
	# birdc6 configure
