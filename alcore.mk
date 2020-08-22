service.config.lms.get:
	docker cp edx.devstack-juniper.master.lms:/edx/etc/lms.yml ./alcore/lms.yml

service.config.studio.get:
	docker cp edx.devstack-juniper.master.studio:/edx/etc/studio.yml ./alcore/studio.yml

service.config.lms.put:
	docker cp ./alcore/lms.yml edx.devstack-juniper.master.lms:/edx/etc/lms.yml

service.config.studio.put:
	docker cp ./alcore/studio.yml edx.devstack-juniper.master.studio:/edx/etc/studio.yml

dev.rebuild.lms: service.config.lms.put dev.static.lms dev.restart-devserver.lms
dev.rebuild.studio: service.config.studio.put dev.static.studio dev.restart-devserver.studio

dev.rebuild.all: dev.rebuild.lms dev.rebuild.studio
