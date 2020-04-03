class tomcat::params {

	#$user_name = 'test005'
	#$there     =  absent

	case $::os[family]{

	'Debian':{$user_name = 'debian03'}
	'RedHat':{$user_name = 'Redhat03'}


}
	$color = 'blue'
	$car   =  'ver blue'
	$myfile = '/tmp/file2'
        $hometest = "/ssss"
}
