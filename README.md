# parsenmap
Simple Nmap XML parsing script.  Doesn't do anything fancy

	root@kali:~/tools/parsenmap# ./parsenmap.rb 

	Generates a .txt file containing the open pots summary and the .nmap information
	USAGE:  ./parsenmap <nmap xml file>

## Sample Output
	root@kali:~/tools/parsenmap# ./parsenmap.rb testnmap.xml
	x.x.x.1	53	domain			
	x.x.x.1	80	http			
	x.x.x.1	5000	upnp	MiniUPnP	2.0	UPnP 1.1
	x.x.x.89	22	ssh	OpenSSH	6.6.1p1 Ubuntu 2ubuntu2.8	Ubuntu Linux; protocol 2.0
	x.x.x.110	22	ssh	OpenSSH	7.2p2 Ubuntu 4ubuntu2.4	Ubuntu Linux; protocol 2.0
	x.x.x.110	111	rpcbind		2-4	RPC #100000
	x.x.x.110	2049	nfs_acl		2-3	RPC #100227
	x.x.x.110	3389	ms-wbt-server	xrdp		
	x.x.x.112	22	ssh	OpenSSH	7.2p2 Ubuntu 4ubuntu2.4	Ubuntu Linux; protocol 2.0
	x.x.x.112	80	http	Apache httpd	2.4.18	(Ubuntu)
	x.x.x.112	443	http	Apache httpd	2.4.18	(Ubuntu)
	x.x.x.125	80	http			
	x.x.x.138	80	http			
	x.x.x.166	443	https	VMware Workstation SOAP API	14.1.1	
	x.x.x.166	903	vmware-auth	VMware Authentication Daemon	1.10	Uses VNC, SOAP
	x.x.x.166	5357	http	Microsoft HTTPAPI httpd	2.0	SSDP/UPnP
	x.x.x.177	22	ssh	OpenSSH	7.4p1 Ubuntu 10	Ubuntu Linux; protocol 2.0
	x.x.x.177	80	http	Apache httpd	2.4.25	(Ubuntu)
	x.x.x.188	22	ssh	OpenSSH	7.4	protocol 2.0
	x.x.x.188	88	kerberos-sec	Heimdal Kerberos		server time: 2018-06-01 19:37:16Z
	x.x.x.188	3283	netassistant			
	x.x.x.188	5900	vnc	Apple remote desktop vnc		
	x.x.x.226	9080	glrpc			
	x.x.x.239	80	http	HP OfficeJet 4650 series printer http config		Serial TH6CM4N1DY0662
	x.x.x.239	443	http	HP OfficeJet 4650 series printer http config		Serial TH6CM4N1DY0662
	x.x.x.239	631	http	HP OfficeJet 4650 series printer http config		Serial TH6CM4N1DY0662
	x.x.x.239	8080	http	HP OfficeJet 4650 series printer http config		Serial TH6CM4N1DY0662
	x.x.x.239	9100	jetdirect			
	x.x.x.239	9220	hp-gsg	HP Generic Scan Gateway	1.0	

