loadmanagerip = "172.16.0.10"
linuxnodeip = "172.16.0.11"
k8sip = "172.16.0.12"

powershell_script "Update windows hostfile" do
    code <<-EOH

    $hostsPath = "C:\\Windows\\System32\\drivers\\etc\\hosts"
    Add-Content $hostsPath "`n#{loadmanagerip}`tapprwin"
    Add-Content $hostsPath "`n#{linuxnodeip}`tapprlin"
    Add-Content $hostsPath "`n#{k8sip}`tapprk8s"
    Add-Content $hostsPath "`n#{loadmanagerip}`tapprenda.bxcr"
    Add-Content $hostsPath "`n#{loadmanagerip}`tapps.apprenda.bxcr"
    Add-Content $hostsPath "`n#{loadmanagerip}`twww.apprenda.bxcr"
    Add-Content $hostsPath "`n#{loadmanagerip}`tapi.apprenda.bxcr"

    exit 0
    EOH
end
