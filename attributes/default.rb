default[:monit][:notify_email]          = "notify@example.com"

default[:monit][:listen]                = "localhost"
default[:monit][:allow]                 = ["localhost"]

default[:monit][:poll_period]           = 60
default[:monit][:poll_start_delay]      = 120

default[:monit][:basedir]               = "/var/lib/monit/events"
default[:monit][:slots]                 = 100

default[:monit][:mail_server]           = "localhost"
default[:monit][:mail_format][:subject] = "monit alert --  $EVENT $SERVICE"
default[:monit][:mail_format][:from]    = "monit@$HOST"
default[:monit][:mail_format][:message] = <<-EOS
$EVENT Service $SERVICE
     Date:        $DATE
     Action:      $ACTION
     Host:        $HOST
     Description: $DESCRIPTION

Your faithful employee,
Monit
EOS

