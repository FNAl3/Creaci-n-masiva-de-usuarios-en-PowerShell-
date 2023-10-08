$usuarios=Import-Csv -Path c:\...\ficehro con los datos
foreach  ($i in $usuarios)
	{
		$clave=ConvertTo-SecureString $i.contra -AsPlainText -Force
		New-LocalUser $i.nombre -Password $clave -AccountNeverExpires -PasswordNeverExpires
		Add-LocalGroupMember -Group usuarios -Member $i.nombre
	}