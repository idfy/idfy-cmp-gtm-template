# idfy-cmp-gtm-template

Google Tag Manager template for Privy's cookie management platform. It sends Google Consent Mode v2 signals from the visitor's Privy consent.

## Setup

Fire the **Privy CMP** tag on two triggers:

1. **Consent Initialization - All Pages**
2. **Custom Event** `privy_consent_update`, which the Privy banner pushes whenever the visitor saves a choice

Basic or advanced Consent Mode is decided by how your Google tags are set up in the container. The template only sends consent signals. Privy's banner still blocks non-Google tags, and Google endpoints other than `googletagmanager.com`, by their Privy category.

## What it does

On Consent Initialization:

- sets the Privy developer ID (`developer_id.dMmRhY2`), plus `ads_data_redaction` and `url_passthrough` when enabled
- sets a global default: every consent type denied except `security_storage`, with `wait_for_update: 500`
- sets one default per **Region defaults** row
- reads the stored choice (the `privyConsent` cookie, then `localStorage`). If it is readable, sends an update and pushes `privy_consent_applied`.

On `privy_consent_update`, it reads the stored choice, sends an update and pushes `privy_consent_applied`. It does not set defaults again.

## Fields

| Field | Default | Notes |
| --- | --- | --- |
| Region defaults | none | ISO 3166-2 codes, comma separated (`IN`, `US-CA`). Invalid codes are ignored, and a code already used in an earlier row is ignored. |
| Privy category for each consent type | `ad_*` → MARKETING, `analytics_storage` → ANALYTICS, `functionality_storage` / `personalization_storage` → FUNCTIONAL | A type is granted only when its category is accepted. `security_storage` is always granted. |
| Redact ads data | off | Applies only while `ad_storage` is denied. |
| URL passthrough | off | Decorates internal links whether or not consent is granted. |

A tag upgraded from v3 with no new fields set behaves like v3, apart from `wait_for_update`, the developer ID and `security_storage`, which v3 could deny.
