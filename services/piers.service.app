[Unit]
Description=Piers Wingfield custom suspend image

[Service]
ExecStart=/home/root/renews.arm \
    -output /usr/share/remarkable/suspended.png \
    -verbose \
    -cooldown COOLDOWN \
    -url https://raw.githubusercontent.com/piersjones/remarkable_news_custom/master/suspendimage/suspended.png \
    -strftime \
    -mode fill
Restart=always

[Install]
WantedBy=multi-user.target
