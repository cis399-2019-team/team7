    node ip-10-0-0-164.us-east-2.compute.internal {

    	 notice("look at me go")

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