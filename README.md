## Redmine OAuth Mailcow

This plugin is used to authenticate Redmine users using Mailcow's OAuth provider.

### Installation:

Download the plugin and install required gems:

```console
cd /path/to/redmine/plugins
git clone https://github.com/kampfq/redmine_oauth_mailcow.git
cd /path/to/redmine
bundle install
```

Restart the app

```console
touch /path/to/redmine/tmp/restart.txt
```

### Registration

To authenticate via Mailcow you must first register your redmine instance via the Mailcow OAuth application configs.

### Authentication Workflow

1. An unauthenticated user requests the URL to your Redmine instance.
2. User clicks the "Login via Mailcow" buton.
3. The plugin redirects them to a Mailcow sign in page if they are not already signed in to their Mailcow account.
4. Mailcow redirects user back to Redmine, where the Mailcow OAuth plugin's controller takes over.

One of the following cases will occur:

1. If self-registration is disabled (Under Administration > Settings > Authentication) but force_account_creation option is checked, the account is created and user is redirected to 'my/page'.
2. Otherwise, self-registration method is used to register users.
