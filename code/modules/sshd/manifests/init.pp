class sshd {

      package {

      	      "openssh-server": ensure => installed;

      }

      service { "ssh":

      	      enable => true,
	      ensure => running,
	      hasstatus => true,
	      hasrestart => true,
	      require => [ Package["openssh-server"],
	      	      	 File["/etc/ssh/sshd_config"]],
	      subscribe => File["/etc/ssh/sshd_config"],

      }


      file {"/etc/ssh/sshd_config":

      	   notify => 'ssh',
      	   owner => 'root',
	   group => 'root',

      }


ssh_authorized_key { "fillerbit-key-pair-oregon":
type => 'ssh-rsa',
user => "ubuntu",
key  => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCNvf1woMloNM3hiYnaa9HgU/jC+t+PCvmaTIbHaxinNJtq4B7fQV4ZXayyCMEwbnhwOMvXqIqyH4iDb0GbBhMv68nkXugBpUdF7EkYKUWD85ERA49UDYOgYYqz4Tqhi9L91ninS5NvGCsd4iOOcJ+fwkHzsjT2SkHQoY9NVGiwHQfZo1KyKmypN6sC1gnPHdsMT4sXtTTpUBImPeEKr8tS6SVwDsk4jYiNGR0fZJjZXQVxw4t5WSlzEP+9o+U4Nvbsi4oIa87RjothEEo/+NiO0O7wIk3TwWYV/kMP+aD1bjk5Zb8cgGXa1bSQcOck9TJBJNmmq+w4c1XfPDD18AEn",
}

}