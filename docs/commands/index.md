---
title: Overview
---

# Command overview
Fields suffixed with `?` are unconfirmed educated guesses which are potentially incorrect and may in reality be reserved for future use.

Note: likely missing some FeliCa Ad-Hoc Link Protocol (Mobile FeliCa OS?) commands.

Most of this information may be incorrect; use with caution.

| Name                                                                         | Required Mode  | Req. Code | Resp. Code |
|------------------------------------------------------------------------------|----------------|-----------|------------|
| Polling[@sonyFeliCaSDManual2024;@onakasuitaCommands]                         | 0              | `00`      | `01`       |
| Request Service[@sonyFeliCaSDManual2024;@onakasuitaCommands]                 | Any            | `02`      | `03`       |
| Request Response[@sonyFeliCaSDManual2024;@onakasuitaCommands]                | Any            | `04`      | `05`       |
| Read (Unencrypted)[@sonyFeliCaSDManual2024;@onakasuitaCommands]              | 0              | `06`      | `07`       |
| Write (Unencrypted)[@sonyFeliCaSDManual2024;@onakasuitaCommands]             | 0              | `08`      | `09`       |
| Search Service Code[@nfcpyTT3Sony2022;@onakasuitaCommands]                   | Any            | `0A`      | `0B`       |
| Request System Code[@sonyFeliCaSDManual2024;@onakasuitaCommands]             | Any            | `0C`      | `0D`       |
| Request Block Information[^rbi][@sonyRCS493BProductSpecifications2008]       | Any            | `0E`?     | `0F`?      |
| [Authentication Start (DES)](./authentication.md#authentication-start-des)   | Any (DES)      | `10`      | `11`       |
| [Authentication Finish (DES)](./authentication.md#authentication-finish-des) | 1/2 (DES)      | `12`      | `13`       |
| Read (DES)[@sonyFeliCaSDManual2024;@onakasuitaCommands]                      | 2 (DES)        | `14`      | `15`       |
| Write (DES)[@sonyFeliCaSDManual2024;@onakasuitaCommands]                     | 2 (DES)        | `16`      | `17`       |
| ???                                                                          | 2? (DES)?      | `18`      | `19`       |
| ???                                                                          | 2? (DES)?      | `1A`      | `1B`       |
| ???                                                                          | 2? (DES)?      | `1C`      | `1D`       |
| Request Block Information Ex[^rbie][@sonyRCS493BProductSpecifications2008]   | Any?           | `1E`?     | `1F`?      |
| ???                                                                          | ?              | `20`      | `21`       |
| Get Container Issue Information[@gungun256ContainerInfo2016]                 | 0 (Any?)       | `22`      | `23`       |
| ???                                                                          | ???            | `24`      | `25`       |
| ???                                                                          | ???            | `26`      | `27`       |
| Get Node Property[@sonyFeliCaSDManual2024]                                   | Any            | `28`      | `29`       |
| ???                                                                          | ?              | `2A`      | `2B`       |
| ???                                                                          | ?              | `2C`      | `2D`       |
| ???                                                                          | ?              | `2E`      | `2F`       |
| ???                                                                          | ?              | `30`      | `31`       |
| Request Service v2[@sonyFeliCaSDManual2024;@onakasuitaCommands]              | Any            | `32`      | `33`       |
| Read (MAC)[@sonyFeliCaSDManual2024]                                          | 0/1 (MAC)      | `34`      | `35`       |
| Write (MAC)[@sonyFeliCaSDManual2024]                                         | 1 (MAC)        | `36`      | `37`       |
| Get System Status[@sonyFeliCaSDManual2024;@onakasuitaCommands]               | Any            | `38`      | `39`       |
| ???                                                                          | ?              | `3A`      | `3B`       |
| Request Specification Version[@sonyFeliCaSDManual2024;@onakasuitaCommands]   | Any            | `3C`      | `3D`       |
| Reset Mode[@sonyFeliCaSDManual2024;@onakasuitaCommands]                      | Any            | `3E`      | `3F`       |
| [Authentication Start (AES)](./authentication.md#authentication-start-aes)   | Any (AES)      | `40`      | `41`       |
| [Authentication Finish (AES)](./authentication.md#authentication-finish-aes) | 1/2 (AES)      | `42`      | `43`       |
| Read (AES)[@sonyFeliCaSDManual2024;@onakasuitaCommands]                      | 2 (AES)        | `44`      | `45`       |
| Write (AES)[@sonyFeliCaSDManual2024;@onakasuitaCommands]                     | 2 (AES)        | `46`      | `47`       |
| Get ???                                                                      | 2? (AES)?      | `48`      | `49`       |
| ???                                                                          | 2? (AES)?      | `4A`      | `4B`       |
| Update Random ID[@sonyFeliCaSDManual2024;@onakasuitaCommands]                | 2 (AES)        | `4C`      | `4D`       |
| Set Node Property[@sonyFeliCaSDManual2024]                                   | 2 (AES)        | `78`      | `79`       |
| [Activate](./adhoc.md#activate)                                              | Any?           | ??        | ??         |
| [Inactivate](./adhoc.md#inactivate)                                              | Any?           | ??        | ??         |
| [Activate2](./adhoc.md#activate2)                                            | 0 (Any?)       | `A4`      | `A5`       |
| [Inactivate2](./adhoc.md#inactivate)                                         | Any?           | `A6`?     | `A7`?      |
| [Push](./adhoc.md#push)                                                      | 0 (Any?)       | `B0`      | `B1`       |
| [Pull](./adhoc.md#pull)                                                      | Any?           | `B2`?     | `B3`?      |
| [Get Ad-hoc Status](./adhoc.md#get-ad-hoc-status)                                                            | Any?           | ??        | ??         |
| [Register Issue ID](./issuance.md#register-issue-id)                         | 2/3 (DES/AES?) | ??        | ??         |
| [Register Area](./issuance.md#register-area)                                 | 2/3 (DES/AES?) | ??        | ??         |
| [Register Service](./issuance.md#register-service)                           | 2/3 (DES/AES?) | ??        | ??         |
| [Register Issue ID Extended](./issuance.md#register-issue-id-extended)       | 2/3 (DES/AES?) | ??        | ??         |
| [Separate System](./issuance.md#separate-system)                             | ??             | ??        | ??         |
| [Set Relational Service](./issuance.md#set-relational-service)               | ??             | ??        | ??         |
| [Change System Block](./issuance.md#change-system-block)                     | 3 (DES/AES?)   | ??        | ??         |
| [Register Manufacture ID](./issuance.md#change-system-block)                 | 2/3 (DES/AES?) | ??        | ??         |
| Self Diagnosis[@sonyFeliCaHighSpeedPatent2011]                               | 2 (DES/AES?)   | ??        | ??         |
| Ping (echo back)[@nxpPN533Note2018]                                          | Any            | `F0`      | `F0`       |
| Delete Key[@sonyFeliCaSDManual2024]                                          | 2 (AES)        | ??        | ??         |
| Set Random ID Option[@sonyFeliCaSDManual2024]                                | 2 (AES)        | ??        | ??         |
| Disable Issuance[@sonyFeliCaSDManual2024]                                    | 2 (AES)        | ??        | ??         |
| Set Diversification Code[@sonyFeliCaSDManual2024]                            | 2 (AES)        | ??        | ??         |
| Tracking[@sonyFeliCaDiscardPatent2014]                                       | ??             | ??        | ??         |
| Reset Data[@sonyFeliCaDiscardPatent2014]                                     | 2?             | ??        | ??         |
| Reset All[@sonyFeliCaDiscardPatent2014]                                      | 2?             | ??        | ??         |
| Terminate[@sonyFeliCaDiscardPatent2014]                                      | 3?             | ??        | ??         |




---
[^rbi]: Assumed from previous Request System Code command within RC-S493B reader product specifications
[^rbie]: Guessed codes: RBI command + 0x10, like Read DES and AES commands