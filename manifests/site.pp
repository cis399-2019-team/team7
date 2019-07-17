    node ip-10-0-0-164 {

    	cron { "puppet update":
	    command => "cd /etc/puppet && git pull -q origin master && touch /etc/puppet/wowzersitworked",
	    user    => root,
	    minute  => "*/5",
	}

	

    }

    node ip-10-0-0.117 {
    }

    node ip-10-0-231 {
    }