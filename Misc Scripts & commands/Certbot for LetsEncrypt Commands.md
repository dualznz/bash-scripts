## Certbot for LetsEncrypt Commands

**Notes:**

Once you have added the (sub)domain details into your nginx configuration file
you then call certbot to that configuration eg *test.domainname.com*



**Command(s):**

```shell
sudo certbot -d test.domainname.com #full domain name path required
```

Then select **1** to not *force redirect*. 