## Example register device with fmf server:

	POST https://p62-fmf.icloud.com/fmipservice/fmf/10730014885/87cda23a7230769ef6aa1ded8a99a5d3e65b9d42/register
	X-Apple-I-MD-RINFO: 17106176
	X-Apple-Realm-Support: 1.0
	Accept: */*
	Authorization: Basic MTA3MzAwMTQ4ODU6QVFBQUFBQllqNHVJQVBxTlllYVA4VW5TOGZZN19uQmlMY0R3eWdZfg==
	X-Apple-PrsId: 10730014885
	Accept-Language: en-us
	Content-Type: application/json
	X-Apple-I-MD-M: 7uFG2/ZgB6SmF5r93yaqedoq+rugYFfglwmtO8rZlzO2ICtyDYMjk28WsJ7Ao7BMiPcwfupM8nF8zW87
	X-Apple-Find-API-Ver: 7.0
	X-Apple-I-Client-Time: 2017-01-30T18:53:07Z
	X-Apple-I-MD: AAAABQAAABCew0XayNn0dmMEylAsTTLaAAAAAw==
	User-Agent: fmflocatord/7.0 iPhone8,2/14C92
	Content-length: 916
	Host: p62-fmf.icloud.com
	Accept-Encoding: gzip, deflate
	{"deviceContext":{"deviceTS":"2017-01-30T18:53:07.201Z","cause":"Restart"},"deviceInfo":{"supportsNotifyV2":true,"supportsForceTouch":true,"deviceClass":"iPhone","locationServicesEnabled":true,"isChargerConnected":true,"unlockState":3,"smlLS":true,"deviceName":"iPhone","deviceColor":"#272728","processId":587,"allPushTokens":["AA8DF6187B75F1486A3BA8ED53C72541F04E339E4FF3FED166DA84DB60BDECFD"],"fmf":true,"fenceMonitoringCapable":true,"productType":"iPhone8,2","udid":"87cda23a7230769ef6aa1ded8a99a5d3e65b9d42","aps-token":"AA8DF6187B75F1486A3BA8ED53C72541F04E339E4FF3FED166DA84DB60BDECFD","locale":"en_US","fmfVersion":"526","batteryStatus":"Charging","platform":"iphoneos","serialNumber":"F2LS47Z9HFM2","timezone":"America\/Chicago","isInternal":false,"otherDevices":[],"fmfRestrictions":false,"fmfBuildVersion":"5.0","batteryLevel":0.98,"enclosureColor":"#b9b7ba","buildVersion":"14C92","productVersion":"10.2"}}
	HTTP/1.1 204 No Content
	Server: AppleHttpServer/3b804a0
	Date: Mon, 30 Jan 2017 18:53:07 GMT
	Content-Type: application/json;charset=UTF-8
	Content-Length: 0
	X-Responding-Instance: fmipservice:36200204:mr91p62ic-ztfb03183501:8004:17A134:03366da
	X-Responding-Server: mr91p62ic-ztfb03183501_004
	X-Responding-Partition: p62
	Strict-Transport-Security: max-age=31536000; includeSubDomains
	Set-Cookie: NSC_q62-gnjqtfswjdf=ffffffff127001cb45525d5f4f58455e445a4a422974;path=/;secure;httponly
	via: icloudedge:da06p01ic-zteu011022:7401:17A16:Dallas
	X-Apple-Request-UUID: 4741f56c-fb49-4b49-ae08-e68871265e2b
	access-control-expose-headers: X-Apple-Request-UUID
	access-control-expose-headers: Via
	
## Example unregister device with fmf server:

	POST https://p62-fmf.icloud.com/fmipservice/fmf/10730014885/87cda23a7230769ef6aa1ded8a99a5d3e65b9d42/unregister
	X-Apple-Realm-Support: 1.0
	X-Apple-I-MD-RINFO: 17106176
	Accept: */*
	Authorization: Basic MTA3MzAwMTQ4ODU6QVFBQUFBQllqNDFpTEVrYmV6R1JNem92aXhaQjJUZ2FUVGJHWlFVfg==
	X-Apple-PrsId: 10730014885
	Accept-Language: en-us
	Content-Type: application/json
	X-Apple-I-MD-M: 7uFG2/ZgB6SmF5r93yaqedoq+rugYFfglwmtO8rZlzO2ICtyDYMjk28WsJ7Ao7BMiPcwfupM8nF8zW87
	X-Apple-Find-API-Ver: 7.0
	X-Apple-I-Client-Time: 2017-01-30T19:02:27Z
	X-Apple-I-MD: AAAABQAAABCOXQEBNI10jzF6dVb8iHHNAAAAAw==
	Cookie: NSC_q62-gnjqtfswjdf=ffffffff127001cb45525d5f4f58455e445a4a422974
	User-Agent: fmflocatord/7.0 iPhone8,2/14C92
	Content-length: 195
	Host: p62-fmf.icloud.com
	Accept-Encoding: gzip, deflate
	{"deviceContext":{"deviceTS":"2017-01-30T19:02:27.428Z"},"deviceInfo":{"buildVersion":"14C92","productType":"iPhone8,2","productVersion":"10.2","udid":"87cda23a7230769ef6aa1ded8a99a5d3e65b9d42"}}
	HTTP/1.1 200 OK
	Server: AppleHttpServer/3b804a0
	Date: Mon, 30 Jan 2017 19:02:28 GMT
	Content-Type: application/json;charset=UTF-8
	X-Responding-Instance: fmipservice:36200204:mr91p62ic-ztfb03183501:8004:17A134:03366da
	X-Responding-Server: mr91p62ic-ztfb03183501_004
	X-Responding-Partition: p62
	Content-Encoding: gzip
	Vary: Accept-Encoding
	Strict-Transport-Security: max-age=31536000; includeSubDomains
	via: icloudedge:ho11p01ic-ztde011216:7401:17A16:Houston
	X-Apple-Request-UUID: ad667366-a6c5-4147-94ca-1e7691315366
	access-control-expose-headers: X-Apple-Request-UUID
	access-control-expose-headers: Via