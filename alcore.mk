service.config.lms.get:
	docker cp edx.devstack-juniper.master.lms:/edx/app/edxapp/lms.env.json ./alcore/lms.env.json

service.config.lms.auth.get:
	docker cp edx.devstack-juniper.master.lms:/edx/app/edxapp/lms.auth.json ./alcore/lms.auth.json

service.config.lms.put:
	docker cp ./alcore/lms.auth.json edx.devstack-juniper.master.lms:/edx/app/edxapp/lms.auth.json

service.config.lms.auth.put:
	docker cp ./alcore/lms.auth.json edx.devstack-juniper.master.lms:/edx/app/edxapp/lms.auth.json
