TrashMail.net disposable email address
======================================
# What is this?

Automates the creation of MEGA accounts. Only for test purposes and not all the steps can be automated.

Creates a disposable email address on TrashMail.net (<https://ssl.trashmail.net/>).

First, you must register yourself on trashmail.net (it's free). With these
credentials you can access the address manager of TrashMail.net. Emails will be
redirected to the address that you set upon registration.

Then, you must provide your credentials to this script. Either you
hard-code it in the source (USERNAME and PASSWORD variables), and how many emails you want to generate.

# Prerequisites

Install Python 2.7 and MEGAcmd available at this link: https://github.com/meganz/MEGAcmd

For ArchLinux, install the AUR package megacmd-bin. If you use `yay`, install it with `yay -S megacmd-bin`

Usage
-----

    python2.7 trashmail.py USERNAME PASSWORD NUM_OF_EMAILS_YOU_WANT

Sample output:

    prcb107f@trashmail.net
    dwadw221f@trashmail.net
    ...

After this, login to your 'main account' and invite the emails and do the signup of temporary_users by calling the script `mega-invite-signup-emails.sh`

```
	bash mega-invite-signup-emails.sh main_account_email "foo@bar.com lol@asd.org" # With spaces
```

Now you have to accept ALL the confirmation emails manually (there is no other way AFAIK).

Then use the script `mega-login-email.sh` to login to all the emails. Sample usage is:

```
	bash mega-login-email.sh "foo@bar.com lol@asd.org" # With spaces
```

Last step (MAYBE), is to login in MegaSync for every account MANUALLY.

P.S: Note the `""`, if those does not work, try with `''`.

Currently, the `mega-login-email.sh` script prompts for a single password, THAT WILL BE THE SAME FOR ALL THE EMAILS.

## TODO

- See if this suffice or must trigger mega-sync application in some ways.

## Fork

This project is forked from: https://github.com/jabbalaci/TrashMail.net-disposable-email-address. Thanks Laszlo!

# License

GNU General Public License v3.0 available in file LICENSE.