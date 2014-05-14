default['yum']['remi-php55']['repositoryid'] = 'remi-php55'

case node['platform_version'].to_i
when 5
	default['yum']['remi-php55']['description'] = 'Les RPM de remi pour Enterprise Linux 5 - $basearch'
	default['yum']['remi-php55']['baseurl'] = 'http://rpms.famillecollet.com/enterprise/5/php55/$basearch/'
	default['yum']['remi-php55']['mirrorlist'] = 'http://rpms.famillecollet.com/enterprise/5/php55/mirror'
	default['yum']['remi-php55']['gpgkey'] = 'http://rpms.famillecollet.com/RPM-GPG-KEY-remi'
when 6
	default['yum']['remi-php55']['description'] = 'Les RPM de remi pour Enterprise Linux 6 - $basearch'
	default['yum']['remi-php55']['baseurl'] = 'http://rpms.famillecollet.com/enterprise/6/php55/$basearch/'
	default['yum']['remi-php55']['mirrorlist'] = 'http://rpms.famillecollet.com/enterprise/6/php55/mirror'
	default['yum']['remi-php55']['gpgkey'] = 'http://rpms.famillecollet.com/RPM-GPG-KEY-remi'
when 7
	default['yum']['remi-php55']['description'] = 'Les RPM de remi pour Enterprise Linux 7 - $basearch'
	default['yum']['remi-php55']['baseurl'] = 'http://rpms.famillecollet.com/enterprise/7/php55/$basearch/'
	default['yum']['remi-php55']['mirrorlist'] = 'http://rpms.famillecollet.com/enterprise/7/php55/mirror'
	default['yum']['remi-php55']['gpgkey'] = 'http://rpms.famillecollet.com/RPM-GPG-KEY-remi'
end

default['yum']['remi-php55']['failovermethod'] = 'priority'
default['yum']['remi-php55']['gpgcheck'] = true
default['yum']['remi-php55']['enabled'] = true
default['yum']['remi-php55']['managed'] = true
