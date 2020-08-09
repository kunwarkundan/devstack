service.config.lms.get:
	docker cp edx.devstack-juniper.master.lms:/edx/etc/lms.yml ./alcore/lms.yml

service.config.lms.put:
	docker cp ./alcore/lms.yml edx.devstack-juniper.master.lms:/edx/etc/lms.yml

dev.rebuild.lms: service.config.lms.put dev.static.lms dev.restart-devserver.lms
