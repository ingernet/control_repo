class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDC3n0Q/jFgivvxwSDZfqAuJZz1T3qdsv51s7e8dKhKlRjEagZgrIj0X0DfkJaxpuZrCabPfEKrnqS6okGZumQhhvN3Op7knPTkG6eMugL4A8I4o4y0E9LlWAEfPVzT/gsM5AVRAMECXhAIwtC682dNMUmrpVWFzD1ZZ9vMEvAWzDTni1/HIB3Y08s1TMyUYYpwTy5q2Md6H8SNlYk8+f3L2i74E5wBM33MVX1Fnr1FNzcicdceV5w7Aom+yo/hbAaMRJ/frIFlVDxlMHHaYBow/HIjctwF/ElVLzyVhOEyC+i1O1okbFLQPjpG9fsOij7xyCbou3buz1Zr83oCitTB',
	}  
}
