# Security Policy

## Public Repository

This repository contains sanitized documentation and example configurations only.

It does not contain the real Docker or Portainer production configuration.

## Sensitive Information

Do not publish:

- Passwords
- API keys
- Access tokens
- Docker registry credentials
- Portainer credentials
- Cloudflare tokens
- Database credentials
- SMTP credentials
- `.env` files
- Real IP addresses
- Real domains
- Internal storage paths
- Application data
- Backup credentials
- Authentication cookies

## Reporting Exposure

If sensitive information is accidentally committed:

1. Rotate the credential immediately.
2. Remove it from current files.
3. Remove it from Git history.
4. Review access logs.
5. Add the file or pattern to `.gitignore`.
