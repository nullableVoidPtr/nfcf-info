---
title: Overview
---

# Command overview
Fields suffixed with `?` are unconfirmed educated guesses which are potentially incorrect and may in reality be reserved for future use.

Note: likely missing some FeliCa Ad-Hoc Link Protocol (Mobile FeliCa OS?) commands.

Most of this information may be incorrect; use with caution.

| Name                                                                                    | Required Mode | Req. Code | Resp. Code |
|-----------------------------------------------------------------------------------------|---------------|-----------|------------|
| Polling[@sonyFeliCaSDManual2024;@onakasuitaCommands]                                    | 0             | `00`      | `01`       |
| Request Service[@sonyFeliCaSDManual2024;@onakasuitaCommands]                            | Any           | `02`      | `03`       |
| Request Response[@sonyFeliCaSDManual2024;@onakasuitaCommands]                           | Any           | `04`      | `05`       |
| Read (Unencrypted)[@sonyFeliCaSDManual2024;@onakasuitaCommands]                         | 0             | `06`      | `07`       |
| Write (Unencrypted)[@sonyFeliCaSDManual2024;@onakasuitaCommands]                        | 0             | `08`      | `09`       |
| Search Service Code[@nfcpyTT3Sony2022;@onakasuitaCommands]                              | Any           | `0A`      | `0B`       |
| Request System Code[@sonyFeliCaSDManual2024;@onakasuitaCommands]                        | Any           | `0C`      | `0D`       |
| Request Block Information[^rbi][@sonyRCS493BProductSpecifications2008]                  | Any           | `0E`?     | `0F`?      |
| [Authentication Start (DES)](./authentication.md#authentication-start-des)              | 0             | `10`      | `11`       |
| [Authentication Finish (DES)](./authentication.md#authentication-finish-des)            | 1 or 2 in DES | `12`      | `13`       |
| Read (DES)[@sonyFeliCaSDManual2024;@onakasuitaCommands]                                 | 2 in DES      | `14`      | `15`       |
| Write (DES)[@sonyFeliCaSDManual2024;@onakasuitaCommands]                                | 2 in DES      | `16`      | `17`       |
| ???                                                                                     | 2 in DES?     | `18`      | `19`       |
| ???                                                                                     | 2 in DES?     | `1A`      | `1B`       |
| ???                                                                                     | 2 in DES?     | `1C`      | `1D`       |
| Request Block Information Ex[^rbie][@sonyRCS493BProductSpecifications2008]              | Any?          | `1E`?     | `1F`?      |
| ???                                                                                     | ?             | `20`      | `21`       |
| Get Container Issue Information[@gungun256ContainerInfo2016]                            | 0 (Any?)      | `22`      | `23`       |
| ???                                                                                     | ???           | `24`      | `25`       |
| ???                                                                                     | ???           | `26`      | `27`       |
| Get Node Property[@sonyFeliCaSDManual2024]                                              | Any           | `28`      | `29`       |
| ???                                                                                     | ?             | `2A`      | `2B`       |
| ???                                                                                     | ?             | `2C`      | `2D`       |
| ???                                                                                     | ?             | `2E`      | `2F`       |
| ???                                                                                     | ?             | `30`      | `31`       |
| Request Service v2[@sonyFeliCaSDManual2024;@onakasuitaCommands]                         | Any           | `32`      | `33`       |
| Read (MAC)[@sonyFeliCaSDManual2024]                                                     | 0 or 1 in MAC | `34`      | `35`       |
| Write (MAC)[@sonyFeliCaSDManual2024]                                                    | 0 or 1 in MAC | `36`      | `37`       |
| Get System Status[@sonyFeliCaSDManual2024;@onakasuitaCommands]                          | Any           | `38`      | `39`       |
| ???                                                                                     | ?             | `3A`      | `3B`       |
| Request Specification Version[@sonyFeliCaSDManual2024;@onakasuitaCommands]              | Any           | `3C`      | `3D`       |
| Reset Mode[@sonyFeliCaSDManual2024;@onakasuitaCommands]                                 | Any           | `3E`      | `3F`       |
| [Authentication Start (AES)](./authentication.md#authentication-start-aes)              | 0             | `40`      | `41`       |
| [Authentication Finish (AES)](./authentication.md#authentication-finish-aes)            | 1 or 2 in AES | `42`      | `43`       |
| Read (AES)[@sonyFeliCaSDManual2024;@onakasuitaCommands]                                 | 2 in AES      | `44`      | `45`       |
| Write (AES)[@sonyFeliCaSDManual2024;@onakasuitaCommands]                                | 2 in AES      | `46`      | `47`       |
| Get ???                                                                                 | 2 in AES?     | `48`      | `49`       |
| ???                                                                                     | 2 in AES?     | `4A`      | `4B`       |
| Update Random ID[@sonyFeliCaSDManual2024;@onakasuitaCommands]                           | 2 in AES?     | `4C`      | `4D`       |
| Set Node Property[@sonyFeliCaSDManual2024]                                              | 2 in AES?     | `78`      | `79`       |
| Activate[@sonyFALPPatent2002]                                                           | Any?          | ??        | ??         |
| Inactivate[@sonyFALPPatent2002]                                                         | Any?          | ??        | ??         |
| [Activate2](./adhoc.md#activate2)[@sonyFALPPatent2002;@sonyFeliCaPushArduino2010]       | 0 (Any?)      | `A4`      | `A5`       |
| Inactivate2[@sonyFALPPatent2002]                                                        | Any?          | `A6`?     | `A7`?      |
| [Push](./adhoc.md#push)[@sonyFALPPatent2002;@sonyFeliCaPushArduino2010]                 | 0 (Any?)      | `B0`      | `B1`       |
| Pull[@sonyFALPPatent2002]                                                               | Any?          | `B2`?     | `B3`?      |
| Get Ad-hoc Status[@sonyFALPPatent2002]                                                  | Any?          | ??        | ??         |
| Register Issue ID[@sonyRCS493BProductSpecifications2008;@sonyFeliCaHighSpeedPatent2011] | 2 or 3        | ??        | ??         |
| Register Area[@sonyRCS493BProductSpecifications2008;@sonyFeliCaHighSpeedPatent2011]     | 2 or 3        | ??        | ??         |
| Register Service[@sonyRCS493BProductSpecifications2008;@sonyFeliCaHighSpeedPatent2011]  | 2 or 3        | ??        | ??         |
| Register Issue ID Ex[@sonyRCS493BProductSpecifications2008]                             | 2 or 3        | ??        | ??         |
| Register Separate System(?)[^separate][@sonyFeliCaSeparateSystems2005]                  | ??            | ??        | ??         |
| Set Relational Service[@sonyRCS493BProductSpecifications2008]                           | ??            | ??        | ??         |
| Change System Block[@sonyFeliCaHighSpeedPatent2011]                                     | 3             | ??        | ??         |
| Register Manufacture ID[@sonyFeliCaHighSpeedPatent2011]                                 | 2 or 3        | ??        | ??         |
| Self Diagnosis[@sonyFeliCaHighSpeedPatent2011]                                          | 2             | ??        | ??         |
| Ping (echo back)[@nxpPN533Note2018]                                                     | Any           | `F0`      | `F0`       |
| Delete Key[@sonyFeliCaSDManual2024]                                                     | ??            | ??        | ??         |
| Set Node Property[@sonyFeliCaSDManual2024]                                              | ??            | ??        | ??         |
| Set Random ID Option[@sonyFeliCaSDManual2024]                                           | ??            | ??        | ??         |
| Disable Issuance[@sonyFeliCaSDManual2024]                                               | ??            | ??        | ??         |
| Set Diversification Code[@sonyFeliCaSDManual2024]                                       | ??            | ??        | ??         |
| Tracking[@sonyFeliCaDiscardPatent2014]                                                  | ??            | ??        | ??         |
| Reset Data[@sonyFeliCaDiscardPatent2014]                                                | ??            | ??        | ??         |
| Reset All[@sonyFeliCaDiscardPatent2014]                                                 | ??            | ??        | ??         |
| Terminate[@sonyFeliCaDiscardPatent2014]                                                 | ??            | ??        | ??         |




---
[^rbi]: Assumed from previous Request System Code command within RC-S493B reader product specifications
[^rbie]: Guessed codes: RBI command + 0x10, like Read DES and AES commands
[^separate]: This command is not officially named, only referred to as "分轄要求" (Separation request).