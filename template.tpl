___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.

___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Privy CMP",
  "brand": {
    "id": "Privy CMP",
    "displayName": "Privy CMP"
  },
  "description": "Google tag manager template for Privy's cookie management platform",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "LABEL",
    "name": "consentModeInfo",
    "displayName": "Fire this tag on two triggers: <strong>Consent Initialization - All Pages</strong> and a Custom Event named <strong>privy_consent_update</strong>. Every Google consent type starts denied (security_storage is always granted) and is updated from the visitor's stored choice once they have made one. Basic or advanced Consent Mode is decided by how your Google tags are set up in this container."
  },
  {
    "type": "GROUP",
    "name": "regionGroup",
    "displayName": "Region defaults",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "SIMPLE_TABLE",
        "name": "regionDefaults",
        "displayName": "Default consent by region",
        "help": "Optional. Overrides the all-denied default for visitors in the listed regions until they make a choice. Use ISO 3166-2 codes, comma separated, e.g. <code>IN</code> or <code>US-CA, US-NY</code>. The United Kingdom is <code>GB</code>, not <code>UK</code>. If a code is in more than one row, the last row applies. Invalid codes are ignored. Google finds the region from the visitor's IP address, which is less accurate for states than for countries.",
        "newRowButtonText": "Add region",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Region (ISO 3166-2)",
            "name": "region",
            "type": "TEXT",
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              },
              {
                "type": "REGEX",
                "args": [
                  "^\\s*[A-Za-z]{2}(-[A-Za-z0-9]{1,3})?\\s*(,\\s*[A-Za-z]{2}(-[A-Za-z0-9]{1,3})?\\s*)*$"
                ],
                "errorMessage": "Use ISO 3166-2 codes such as IN or US-CA, separated by commas."
              }
            ]
          },
          {
            "defaultValue": "denied",
            "displayName": "ad_storage",
            "name": "ad_storage",
            "type": "SELECT",
            "selectItems": [
              {
                "value": "denied",
                "displayValue": "denied"
              },
              {
                "value": "granted",
                "displayValue": "granted"
              }
            ]
          },
          {
            "defaultValue": "denied",
            "displayName": "ad_user_data",
            "name": "ad_user_data",
            "type": "SELECT",
            "selectItems": [
              {
                "value": "denied",
                "displayValue": "denied"
              },
              {
                "value": "granted",
                "displayValue": "granted"
              }
            ]
          },
          {
            "defaultValue": "denied",
            "displayName": "ad_personalization",
            "name": "ad_personalization",
            "type": "SELECT",
            "selectItems": [
              {
                "value": "denied",
                "displayValue": "denied"
              },
              {
                "value": "granted",
                "displayValue": "granted"
              }
            ]
          },
          {
            "defaultValue": "denied",
            "displayName": "analytics_storage",
            "name": "analytics_storage",
            "type": "SELECT",
            "selectItems": [
              {
                "value": "denied",
                "displayValue": "denied"
              },
              {
                "value": "granted",
                "displayValue": "granted"
              }
            ]
          },
          {
            "defaultValue": "denied",
            "displayName": "functionality_storage",
            "name": "functionality_storage",
            "type": "SELECT",
            "selectItems": [
              {
                "value": "denied",
                "displayValue": "denied"
              },
              {
                "value": "granted",
                "displayValue": "granted"
              }
            ]
          },
          {
            "defaultValue": "denied",
            "displayName": "personalization_storage",
            "name": "personalization_storage",
            "type": "SELECT",
            "selectItems": [
              {
                "value": "denied",
                "displayValue": "denied"
              },
              {
                "value": "granted",
                "displayValue": "granted"
              }
            ]
          }
        ]
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "mapGroup",
    "displayName": "Privy category for each Google consent type",
    "groupStyle": "ZIPPY_CLOSED",
    "help": "A Google consent type is granted only when the visitor accepts the Privy category chosen here. security_storage is always granted.",
    "subParams": [
      {
        "type": "SELECT",
        "name": "mapAdStorage",
        "displayName": "ad_storage",
        "macrosInSelect": false,
        "selectItems": [
          {
            "value": "FUNCTIONAL",
            "displayValue": "FUNCTIONAL"
          },
          {
            "value": "ANALYTICS",
            "displayValue": "ANALYTICS"
          },
          {
            "value": "MARKETING",
            "displayValue": "MARKETING"
          }
        ],
        "simpleValueType": true,
        "defaultValue": "MARKETING"
      },
      {
        "type": "SELECT",
        "name": "mapAdUserData",
        "displayName": "ad_user_data",
        "macrosInSelect": false,
        "selectItems": [
          {
            "value": "FUNCTIONAL",
            "displayValue": "FUNCTIONAL"
          },
          {
            "value": "ANALYTICS",
            "displayValue": "ANALYTICS"
          },
          {
            "value": "MARKETING",
            "displayValue": "MARKETING"
          }
        ],
        "simpleValueType": true,
        "defaultValue": "MARKETING"
      },
      {
        "type": "SELECT",
        "name": "mapAdPersonalization",
        "displayName": "ad_personalization",
        "macrosInSelect": false,
        "selectItems": [
          {
            "value": "FUNCTIONAL",
            "displayValue": "FUNCTIONAL"
          },
          {
            "value": "ANALYTICS",
            "displayValue": "ANALYTICS"
          },
          {
            "value": "MARKETING",
            "displayValue": "MARKETING"
          }
        ],
        "simpleValueType": true,
        "defaultValue": "MARKETING"
      },
      {
        "type": "SELECT",
        "name": "mapAnalyticsStorage",
        "displayName": "analytics_storage",
        "macrosInSelect": false,
        "selectItems": [
          {
            "value": "FUNCTIONAL",
            "displayValue": "FUNCTIONAL"
          },
          {
            "value": "ANALYTICS",
            "displayValue": "ANALYTICS"
          },
          {
            "value": "MARKETING",
            "displayValue": "MARKETING"
          }
        ],
        "simpleValueType": true,
        "defaultValue": "ANALYTICS"
      },
      {
        "type": "SELECT",
        "name": "mapFunctionalityStorage",
        "displayName": "functionality_storage",
        "macrosInSelect": false,
        "selectItems": [
          {
            "value": "FUNCTIONAL",
            "displayValue": "FUNCTIONAL"
          },
          {
            "value": "ANALYTICS",
            "displayValue": "ANALYTICS"
          },
          {
            "value": "MARKETING",
            "displayValue": "MARKETING"
          }
        ],
        "simpleValueType": true,
        "defaultValue": "FUNCTIONAL"
      },
      {
        "type": "SELECT",
        "name": "mapPersonalizationStorage",
        "displayName": "personalization_storage",
        "macrosInSelect": false,
        "selectItems": [
          {
            "value": "FUNCTIONAL",
            "displayValue": "FUNCTIONAL"
          },
          {
            "value": "ANALYTICS",
            "displayValue": "ANALYTICS"
          },
          {
            "value": "MARKETING",
            "displayValue": "MARKETING"
          }
        ],
        "simpleValueType": true,
        "defaultValue": "FUNCTIONAL"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "advancedGroup",
    "displayName": "Advanced settings",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "CHECKBOX",
        "name": "adsDataRedaction",
        "checkboxText": "Redact ads data (ads_data_redaction)",
        "simpleValueType": true,
        "defaultValue": false,
        "help": "When advertising consent is denied, removes ad click identifiers from what is sent to Google and routes requests through a cookieless domain. No effect when consent is granted. Mainly has an effect in advanced consent mode, where Google tags load before consent."
      },
      {
        "type": "CHECKBOX",
        "name": "urlPassthrough",
        "checkboxText": "Pass ad click information through URLs (url_passthrough)",
        "simpleValueType": true,
        "defaultValue": false,
        "help": "Adds <code>gclid</code>, <code>dclid</code>, <code>gclsrc</code>, <code>_gl</code> and <code>wbraid</code> to links within your site so ad click and analytics information survives without cookies. Works only for same-domain links, with a consent-aware Google tag and, for Google Ads and Floodlight, a GCLID or DCLID in the landing URL. Make sure redirects keep these parameters, your analytics tools ignore them in page URLs, and they don't break pages that use query parameters. Google may add them whether or not consent is granted. Mainly has an effect in advanced consent mode, where Google tags load before consent."
      },
      {
        "type": "TEXT",
        "name": "waitForUpdate",
        "displayName": "Wait for update (milliseconds)",
        "simpleValueType": true,
        "defaultValue": "",
        "valueValidators": [
          {
            "type": "REGEX",
            "args": [
              "^([1-9][0-9]{0,4})?$"
            ],
            "errorMessage": "Leave empty, or enter a whole number of milliseconds such as 500."
          }
        ],
        "help": "Optional. Leave empty unless your Google tags fire before the visitor's stored choice is applied. When set, Google tags wait up to this long for the Privy banner to send that choice."
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const log = require('logToConsole');
const setDefaultConsentState = require('setDefaultConsentState');
const updateConsentState = require('updateConsentState');
const getCookieValues = require('getCookieValues');
const localStorage = require('localStorage');
const copyFromDataLayer = require('copyFromDataLayer');
const createQueue = require('createQueue');
const gtagSet = require('gtagSet');
const getType = require('getType');
const makeString = require('makeString');
const makeNumber = require('makeNumber');
const JSON = require('JSON');

const CONSENT_NAME = 'privyConsent';
const UPDATE_EVENT = 'privy_consent_update';
const APPLIED_EVENT = 'privy_consent_applied';
const DEVELOPER_ID_KEY = 'developer_id.dMmRhY2';
const CATEGORIES = ['FUNCTIONAL', 'ANALYTICS', 'MARKETING'];
const LETTERS = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
const LETTERS_AND_DIGITS = LETTERS + '0123456789';

// Google consent type, its map field, and the v3 category it falls back to.
const SIGNALS = [
  {type: 'ad_storage', field: 'mapAdStorage', fallback: 'MARKETING'},
  {type: 'ad_user_data', field: 'mapAdUserData', fallback: 'MARKETING'},
  {type: 'ad_personalization', field: 'mapAdPersonalization', fallback: 'MARKETING'},
  {type: 'analytics_storage', field: 'mapAnalyticsStorage', fallback: 'ANALYTICS'},
  {type: 'functionality_storage', field: 'mapFunctionalityStorage', fallback: 'FUNCTIONAL'},
  {type: 'personalization_storage', field: 'mapPersonalizationStorage', fallback: 'FUNCTIONAL'}
];

function categoryFor(signal) {
  const chosen = data[signal.field];
  return CATEGORIES.indexOf(chosen) >= 0 ? chosen : signal.fallback;
}

function consentState(isGranted) {
  const state = {};
  SIGNALS.forEach((signal) => {
    state[signal.type] = isGranted(signal) ? 'granted' : 'denied';
  });
  state.security_storage = 'granted';
  return state;
}

function onlyChars(value, allowed) {
  for (let i = 0; i < value.length; i++) {
    if (allowed.indexOf(value.charAt(i)) < 0) return false;
  }
  return true;
}

// ISO 3166-1 alpha-2 country, optionally with an ISO 3166-2 subdivision.
function isRegionCode(code) {
  const country = code.substring(0, 2);
  if (country.length !== 2 || !onlyChars(country, LETTERS)) return false;
  if (code.length === 2) return true;
  const subdivision = code.substring(3);
  return code.charAt(2) === '-' && subdivision.length >= 1 && subdivision.length <= 3 &&
    onlyChars(subdivision, LETTERS_AND_DIGITS);
}

function regionDefaults() {
  const rows = getType(data.regionDefaults) === 'array' ? data.regionDefaults : [];
  const rowCodes = rows.map((row) => {
    const codes = [];
    if (getType(row) !== 'object' || !row.region) return codes;
    makeString(row.region).split(',').forEach((raw) => {
      const code = raw.trim().toUpperCase();
      if (!code) return;
      if (!isRegionCode(code)) {
        log('Privy CMP: ignored invalid region code "' + raw.trim() + '"');
        return;
      }
      codes.push(code);
    });
    return codes;
  });
  // A code listed in several rows belongs to the last one.
  const owner = {};
  rowCodes.forEach((codes, i) => codes.forEach((code) => { owner[code] = i; }));
  const defaults = [];
  rows.forEach((row, i) => {
    const codes = [];
    rowCodes[i].forEach((code) => {
      if (owner[code] === i && codes.indexOf(code) < 0) codes.push(code);
    });
    if (!codes.length) return;
    const state = consentState((signal) => row[signal.type] === 'granted');
    state.region = codes;
    defaults.push(state);
  });
  return defaults;
}

function parseConsent(raw) {
  if (!raw) return undefined;
  const consent = JSON.parse(raw);
  return getType(consent) === 'object' ? consent : undefined;
}

// The banner mirrors the cookie to localStorage and falls back to it the same way.
function readStoredConsent() {
  const cookies = getCookieValues(CONSENT_NAME);
  const fromCookie = cookies && cookies.length ? parseConsent(cookies[0]) : undefined;
  return fromCookie || parseConsent(localStorage.getItem(CONSENT_NAME));
}

function applyStoredConsent(dataLayerPush) {
  const consent = readStoredConsent();
  if (!consent || consent.update !== true) {
    log('Privy CMP: visitor has not chosen yet, defaults stay in place');
    return;
  }
  updateConsentState(consentState((signal) => consent[categoryFor(signal)] === true));
  dataLayerPush({event: APPLIED_EVENT, consent_state: consent});
}

function waitForUpdateMs() {
  const ms = makeNumber(makeString(data.waitForUpdate || '').trim());
  return ms > 0 ? ms : undefined;
}

function setDefaults() {
  const settings = {};
  settings[DEVELOPER_ID_KEY] = true;
  if (data.adsDataRedaction === true) settings.ads_data_redaction = true;
  if (data.urlPassthrough === true) settings.url_passthrough = true;
  gtagSet(settings);

  const waitMs = waitForUpdateMs();
  [consentState(() => false)].concat(regionDefaults()).forEach((state) => {
    if (waitMs) state.wait_for_update = waitMs;
    setDefaultConsentState(state);
  });
}

const dataLayerPush = createQueue('dataLayer');
if (copyFromDataLayer('event') !== UPDATE_EVENT) setDefaults();
applyStoredConsent(dataLayerPush);

data.gtmOnSuccess();


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "get_cookies",
        "versionId": "1"
      },
      "param": [
        {
          "key": "cookieAccess",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "cookieNames",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "privyConsent"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "dataLayer"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_consent",
        "versionId": "1"
      },
      "param": [
        {
          "key": "consentTypes",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "ad_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "analytics_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "functionality_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "personalization_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "security_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "ad_personalization"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "ad_user_data"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_local_storage",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "privyConsent"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "read_data_layer",
        "versionId": "1"
      },
      "param": [
        {
          "key": "allowedKeys",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "keyPatterns",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "event"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "write_data_layer",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keyPatterns",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "developer_id.dMmRhY2"
              },
              {
                "type": 1,
                "string": "ads_data_redaction"
              },
              {
                "type": 1,
                "string": "url_passthrough"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios:
- name: AC5 consent init sets developer id then all-denied global default
  code: |-
    on(INIT);
    stored(undefined, null);
    runCode({});
    assertThat(calls).isEqualTo([
      ['set', {'developer_id.dMmRhY2': true}],
      ['default', ALL_DENIED]
    ]);
    assertApi('gtmOnSuccess').wasCalled();
- name: AC6 region rows add a default per row with normalised codes
  code: |-
    on(INIT);
    stored(undefined, null);
    runCode({regionDefaults: [
      row('us-ca, US-NY', 'granted', 'granted', 'denied', 'granted', 'granted', 'denied')
    ]});
    assertThat(defaults()).isEqualTo([
      ALL_DENIED,
      {ad_storage: 'granted', ad_user_data: 'granted', ad_personalization: 'denied', analytics_storage: 'granted', functionality_storage: 'granted', personalization_storage: 'denied', security_storage: 'granted', region: ['US-CA', 'US-NY']}
    ]);
- name: AC6 invalid codes dropped, empty rows skipped, last row wins on duplicates
  code: |-
    on(INIT);
    stored(undefined, null);
    runCode({regionDefaults: [
      row('IN, India, US-, 12, US-ABCD', 'granted', 'granted', 'granted', 'granted', 'granted', 'granted'),
      row('', 'granted', 'granted', 'granted', 'granted', 'granted', 'granted'),
      row(' , XX-', 'granted', 'granted', 'granted', 'granted', 'granted', 'granted'),
      row('in,gb', 'denied', 'denied', 'denied', 'granted', 'denied', 'denied')
    ]});
    assertThat(defaults()).isEqualTo([
      ALL_DENIED,
      merge(ALL_DENIED, {analytics_storage: 'granted', region: ['IN', 'GB']})
    ]);
- name: AC6 a later row takes only the duplicated code from an earlier row
  code: |-
    on(INIT);
    stored(undefined, null);
    runCode({regionDefaults: [
      row('FR, ES', 'granted', 'granted', 'granted', 'granted', 'granted', 'granted'),
      row('FR', 'denied', 'denied', 'denied', 'granted', 'denied', 'denied')
    ]});
    assertThat(defaults()).isEqualTo([
      ALL_DENIED,
      merge(ALL_GRANTED, {region: ['ES']}),
      merge(ALL_DENIED, {analytics_storage: 'granted', region: ['FR']})
    ]);
- name: AC6 a row value other than granted is sent as denied
  code: |-
    on(INIT);
    stored(undefined, null);
    runCode({regionDefaults: [{region: 'DE', ad_storage: 'yes'}]});
    assertThat(defaults()[1]).isEqualTo(merge(ALL_DENIED, {region: ['DE']}));
- name: AC7 custom map grants a type only when its mapped category is true
  code: |-
    on(INIT);
    stored(consentCookie({NECESSARY: true, FUNCTIONAL: false, ANALYTICS: true, MARKETING: false, update: true}), null);
    runCode({mapAnalyticsStorage: 'MARKETING', mapAdUserData: 'ANALYTICS'});
    assertThat(updates()).isEqualTo([merge(ALL_DENIED, {ad_user_data: 'granted'})]);
- name: AC7 unknown map value falls back to v3 map and security stays granted
  code: |-
    on(INIT);
    stored(consentCookie({NECESSARY: false, FUNCTIONAL: true, ANALYTICS: false, MARKETING: true, update: true}), null);
    runCode({mapAdStorage: 'NECESSARY'});
    assertThat(updates()).isEqualTo([merge(ALL_GRANTED, {analytics_storage: 'denied'})]);
- name: AC7 a category value other than true does not grant
  code: |-
    on(INIT);
    stored(consentCookie({NECESSARY: true, FUNCTIONAL: 'true', ANALYTICS: 1, MARKETING: 'yes', update: true}), null);
    runCode({});
    assertThat(updates()).isEqualTo([ALL_DENIED]);
- name: AC8 redaction and passthrough are sent only when on
  code: |-
    on(INIT);
    stored(undefined, null);
    runCode({adsDataRedaction: true, urlPassthrough: true});
    assertThat(calls[0]).isEqualTo(['set', {'developer_id.dMmRhY2': true, ads_data_redaction: true, url_passthrough: true}]);
- name: AC9 returning visitor with cookie gets update and applied event
  code: |-
    const consent = {NECESSARY: true, FUNCTIONAL: true, ANALYTICS: true, MARKETING: true, update: true};
    on(INIT);
    stored(consentCookie(consent), null);
    runCode({});
    assertThat(calls).isEqualTo([
      ['set', {'developer_id.dMmRhY2': true}],
      ['default', ALL_DENIED],
      ['update', ALL_GRANTED],
      ['push', {event: 'privy_consent_applied', consent_state: consent}]
    ]);
- name: AC9 cookie missing falls back to localStorage
  code: |-
    const consent = {NECESSARY: true, FUNCTIONAL: false, ANALYTICS: true, MARKETING: false, update: true};
    on(INIT);
    stored(undefined, consentCookie(consent));
    runCode({});
    assertThat(updates()).isEqualTo([merge(ALL_DENIED, {analytics_storage: 'granted'})]);
    assertThat(pushes()).isEqualTo([{event: 'privy_consent_applied', consent_state: consent}]);
- name: AC9 unparsable cookie falls back to localStorage
  code: |-
    on(INIT);
    stored('{not json', consentCookie({NECESSARY: true, FUNCTIONAL: false, ANALYTICS: false, MARKETING: true, update: true}));
    runCode({});
    assertThat(updates()).isEqualTo([merge(ALL_DENIED, {ad_storage: 'granted', ad_user_data: 'granted', ad_personalization: 'granted'})]);
- name: AC9 nothing readable sends no update
  code: |-
    on(INIT);
    stored('null', '"text"');
    runCode({});
    assertThat(updates()).isEqualTo([]);
    assertThat(pushes()).isEqualTo([]);
    assertApi('gtmOnSuccess').wasCalled();
- name: AC9 unanswered visitor (update false) keeps the defaults
  code: |-
    on(INIT);
    stored(consentCookie({NECESSARY: true, FUNCTIONAL: false, ANALYTICS: false, MARKETING: false, update: false}), null);
    runCode({regionDefaults: [row('IN', 'denied', 'denied', 'denied', 'granted', 'denied', 'denied')]});
    assertThat(defaults().length).isEqualTo(2);
    assertThat(updates()).isEqualTo([]);
    assertThat(pushes()).isEqualTo([]);
    assertApi('gtmOnSuccess').wasCalled();
- name: AC9 stored choice without update flag is treated as unanswered
  code: |-
    on(INIT);
    stored(consentCookie({NECESSARY: true, FUNCTIONAL: true, ANALYTICS: true, MARKETING: true}), null);
    runCode({});
    assertThat(updates()).isEqualTo([]);
    assertThat(pushes()).isEqualTo([]);
- name: AC10 update event for an unanswered visitor does nothing
  code: |-
    on(UPDATE);
    stored(consentCookie({NECESSARY: true, FUNCTIONAL: false, ANALYTICS: false, MARKETING: false, update: false}), null);
    runCode({});
    assertThat(calls).isEqualTo([]);
    assertApi('gtmOnSuccess').wasCalled();
- name: AC10 update event sends update and applied event only
  code: |-
    const consent = {NECESSARY: true, FUNCTIONAL: false, ANALYTICS: true, MARKETING: false, update: true};
    on(UPDATE);
    stored(consentCookie(consent), null);
    runCode({adsDataRedaction: true, regionDefaults: [row('IN', 'granted', 'granted', 'granted', 'granted', 'granted', 'granted')]});
    assertThat(calls).isEqualTo([
      ['update', merge(ALL_DENIED, {analytics_storage: 'granted'})],
      ['push', {event: 'privy_consent_applied', consent_state: consent}]
    ]);
- name: AC10 update event with nothing stored does nothing
  code: |-
    on(UPDATE);
    stored(undefined, null);
    runCode({});
    assertThat(calls).isEqualTo([]);
    assertApi('gtmOnSuccess').wasCalled();
- name: AC11 upgraded tag with no new fields matches v3 consent values
  code: |-
    on(INIT);
    stored(consentCookie({NECESSARY: true, FUNCTIONAL: true, ANALYTICS: false, MARKETING: true, update: true}), null);
    runCode({});
    assertThat(defaults()).isEqualTo([ALL_DENIED]);
    assertThat(updates()).isEqualTo([merge(ALL_GRANTED, {analytics_storage: 'denied'})]);
- name: wait_for_update is added to every default when set
  code: |-
    on(INIT);
    stored(undefined, null);
    runCode({waitForUpdate: ' 500 ', regionDefaults: [row('IN', 'denied', 'denied', 'denied', 'granted', 'denied', 'denied')]});
    assertThat(defaults()).isEqualTo([
      merge(ALL_DENIED, {wait_for_update: 500}),
      merge(ALL_DENIED, {analytics_storage: 'granted', region: ['IN'], wait_for_update: 500})
    ]);
- name: wait_for_update is left out when empty, zero or not a number
  code: |-
    on(INIT);
    stored(undefined, null);
    runCode({waitForUpdate: ''});
    runCode({waitForUpdate: '0'});
    runCode({waitForUpdate: 'abc'});
    assertThat(defaults()).isEqualTo([ALL_DENIED, ALL_DENIED, ALL_DENIED]);
setup: |-
  const JSON = require('JSON');
  const INIT = 'gtm.init_consent';
  const UPDATE = 'privy_consent_update';
  const ALL_DENIED = {ad_storage: 'denied', ad_user_data: 'denied', ad_personalization: 'denied', analytics_storage: 'denied', functionality_storage: 'denied', personalization_storage: 'denied', security_storage: 'granted'};
  const ALL_GRANTED = {ad_storage: 'granted', ad_user_data: 'granted', ad_personalization: 'granted', analytics_storage: 'granted', functionality_storage: 'granted', personalization_storage: 'granted', security_storage: 'granted'};
  const calls = [];
  mock('gtagSet', (settings) => { calls.push(['set', settings]); });
  mock('setDefaultConsentState', (state) => { calls.push(['default', state]); });
  mock('updateConsentState', (state) => { calls.push(['update', state]); });
  mock('createQueue', () => (event) => { calls.push(['push', event]); });

  function merge(base, extra) {
    const out = {};
    for (const k in base) out[k] = base[k];
    for (const k in extra) out[k] = extra[k];
    return out;
  }
  function only(kind) {
    return calls.filter((c) => c[0] === kind).map((c) => c[1]);
  }
  function defaults() { return only('default'); }
  function updates() { return only('update'); }
  function pushes() { return only('push'); }
  function on(event) {
    mock('copyFromDataLayer', (key) => key === 'event' ? event : undefined);
  }
  function stored(cookieValue, localValue) {
    mock('getCookieValues', (name) => name === 'privyConsent' && cookieValue !== undefined ? [cookieValue] : []);
    mockObject('localStorage', {getItem: (key) => key === 'privyConsent' ? localValue : null});
  }
  function consentCookie(consent) { return JSON.stringify(consent); }
  function row(region, ad, adUser, adPers, analytics, functionality, personalization) {
    return {region: region, ad_storage: ad, ad_user_data: adUser, ad_personalization: adPers, analytics_storage: analytics, functionality_storage: functionality, personalization_storage: personalization};
  }


___NOTES___

Created on 27/08/2024, 11:47:57

Last modified on 17/11/2026