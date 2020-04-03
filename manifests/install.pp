class tomcat::install inherits tomcat{
user {$user_name:
	ensure => present,
}
file {'/tmp/file':

      content => "

		Hostname : ${::fqdn}
		Memory   : ${::memory['system']}
		cpu models : ${::processors['count']}
                OS :     ${::os['family']}


"

}
file {$myfile:

	content => template ('tomcat/temp.conf.erb')



}


}
