
docker run -it --rm --name certbot \
  -v /egotisticalgiraffe.com/letsencrypt/:/etc/letsencrypt \
  -v /egotisticalgiraffe.com/letsencrypt/log:/var/log/letsencrypt \
  -p 80:80 \
  certbot/certbot -t certonly \
  --standalone \
  --email letsencrypt@egotisticalgiraffe.com \
  --no-eff-email \
  --agree-tos --renew-by-default \
  -d egotisticalgiraffe.com,www.egotisticalgiraffe.com;