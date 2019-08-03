    node ip-10-0-0-164 {

    	 notice("look at me go")

	 include sshd
	 include nginx

    	cron { "puppet update":
	    command => "cd /etc/puppet && git pull -q origin master && puppet apply manifests/site.pp",
	    user    => root,
	    minute  => "*/1",
	}

	

    }

    node ip-10-0-0-117 {
    }

    node ip-10-0-231 {
    }