#!/usr/bin/expect

set PORT 22
set HOST 156.251.189.96
set USER root
set PASSWORD dFjN7WA54

spawn ssh -p $PORT $USER@$HOST
expect {
        "yes/no" {send "yes\r";exp_continue;}
         "*password:*" { send "$PASSWORD\r" }
        }
interact
