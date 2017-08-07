from ovirtsdk.api import API
from ovirtsdk.xml import params

try:
    api = API (url="https://_HOST_",
               username="_USER_@_DOMAIN_",
               password="_PASS_",
               ca_file="_ca.crt_")

    vm_name = "vm1"
    vm_memory = 512 * 1024 * 1024
    vm_cluster = api.clusters.get(name="Default")
    vm_template = api.templates.get(name="Blank")
    vm_os = params.OperatingSystem(boot=[params.Boot(dev="hd")])

    vm_params = params.VM(name=vm_name,
                         memory=vm_memory,
                         cluster=vm_cluster,
                         template=vm_template,
                         os=vm_os)

    try:
        api.vms.add(vm=vm_params)
        print "Virtual machine '%s' added." % vm_name
    except Exception as ex:
        print "Adding virtual machine '%s' failed: %s" % (vm_name, ex)

    api.disconnect()

except Exception as ex:
print "Unexpected error: %s" % ex