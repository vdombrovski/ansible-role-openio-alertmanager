[![Build Status](https://travis-ci.org/open-io/ansible-role-openio-alertmanager.svg?branch=master)](https://travis-ci.org/open-io/ansible-role-openio-alertmanager)
# Ansible role `alertmanager`

An Ansible role for deploying alertmanager (monitoring).

## Requirements

- Ansible 2.5+

## Role Variables

| Variable                                    | Description                                                          |
| ------------------------------------------- | -------------------------------------------------------------------- |
| `openio_alertmanager_bind_address`          | Alertmanager IP will listen on                                       |
| `openio_alertmanager_bind_interface`        | Network interface alertmanager listens on                            |
| `openio_alertmanager_bind_port`             | Port used by the alertmanager                                        |
| `openio_alertmanager_config_dir`            | Path to the configuration directory                                  |
| `openio_alertmanager_custom_receivers`      | List of custom receiver configurations                               |
| `openio_alertmanager_custom_routes`         | List of custom routes for routing notifications                      |
| `openio_alertmanager_inhibit_rules`         | List of rules to ignore alerts                                       |
| `openio_alertmanager_provision_only`        | Provision only without restarting services                           |
| `openio_alertmanager_resolve_timeout`       | Global alert resolve timeout                                         |
| `openio_alertmanager_route`                 | Main route for sending notification, responsible for grouping alerts |
| `openio_alertmanager_service_enabled`       | Enable systemd service                                               |
| `openio_alertmanager_simple_email_enabled`  | Enable simple email notifications                                    |
| `openio_alertmanager_simple_email_from`     | Simple email notifications sender                                    |
| `openio_alertmanager_simple_email_pwd`      | Simple email notifications account password                          |
| `openio_alertmanager_simple_email_smtp`     | Simple email notifications SMTP server                               |
| `openio_alertmanager_simple_email_tls`      | Simple email notifications use TLS                                   |
| `openio_alertmanager_simple_email_to`       | Simple email notifications list of email recipients                  |
| `openio_alertmanager_simple_email_receiver` | Simple email notifications receiver                                  |
| `openio_alertmanager_simple_email_route`    | Simple email notifications route                                     |
| `openio_alertmanager_storage_path`          | Path to alertmanager storage                                         |

## Dependencies

No dependencies.

## Example Playbook

```yaml
- hosts: all
  become: true
  vars:
    NS: OPENIO
  roles:
    - role: users
    - role: alertmanager
```


```ini
[all]
node1 ansible_host=192.168.1.173
```

## Contributing

Issues, feature requests, ideas are appreciated and can be posted in the Issues section.

Pull requests are also very welcome.
The best way to submit a PR is by first creating a fork of this Github project, then creating a topic branch for the suggested change and pushing that branch to your own fork.
Github can then easily create a PR based on that branch.

## License

GNU AFFERO GENERAL PUBLIC LICENSE, Version 3

## Contributors

- [Vladimir DOMBROVSKI](https://github.com/vdombrovski) (maintainer)
- [Cedric DELGEHIER](https://github.com/cdelgehier) (maintainer)
- [Romain ACCIARI](https://github.com/racciari) (maintainer)
- [Vincent LEGOLL](https://github.com/vincent-legoll) (maintainer)
