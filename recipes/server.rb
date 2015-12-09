package 'httpd'

file '/var/www/html/index.html' do
	content "<h1>Hello, World</h1>
	<h2>Server IP Address is: #{node['ipaddress']}</h2>
	<h2>Server Hostname is: #{node['hostname']}</h2
"
end

service 'httpd' do
	action [ :enable, :start ]
end

