.PHONY: config macos linux_server linux_desktop

config:
	echo config............
	$(MAKE) --directory=config symlink
	$(MAKE) --directory=scripts export_keys
	
macos:
	echo macos............
	$(MAKE) --directory=scripts macos


linux_server:
	echo linux_server............
	$(MAKE) --directory=scripts linux_server
#	bash scripts/linux/aptinstall.sh

linux_desktop:
	echo linux_desktop............
	$(MAKE) --directory=scripts linux_destop
#	bash scripts/linux/snapinstall.sh

repos:
	echo repos............
	$(MAKE) --directory=repos all

secrets:
	echo secrets............
	$(MAKE) --directory=secrets import_keys