    node ip-10-0-0-164 {

    	 notice("look at me go")

	 include sshd

    	cron { "puppet update":
	    command => "cd /etc/puppet && git pull -q origin master && touch /etc/puppet/wowzersitworked",
	    user    => root,
	    minute  => "*/1",
	}

	

    }

    node ip-10-0-0-117 {
    }

    node ip-10-0-231 {
    }