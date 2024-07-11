---
title: Tags
---

# Proximity Integrated Circuits

| IC                                          | IC Type (Hex) | ROM Type (Hex) |
|---------------------------------------------|---------------|----------------|
| [RC-S830](#rc-s830)                    | `00`          |                |
| [RC-S915](#rc-s915)                         | `01`          |                |
| [RC-S919](#token)                           | `02`          |                |
| [Mobile FeliCa 1.0](#version-10)            | `06`-`07`     |                |
| [RC-S952](#dual-interface-32kb)             | `08`          |                |
| [RC-S953](#dual-interface-16kb)             | `09`          |                |
| Unknown Suica (RC-S9X4)[@nfcpyTT3Sony2022] | `0B`          |                |
| [RC-S954](#cjrc-compliant)                  | `0C`          |                |
| [RC-S960](#high-speed-fram)                 | `0D`          |                |
| [Mobile FeliCa 2.0](#version-20)            | `10`-`13`     |                |
| [Mobile FeliCa 3.0](#version-30)            | `14`-`15`     |                |
| [Mobile Suica](#mobile-suica)               | `16`          |                |
| [Mobile FeliCa 4.0](#version-40)            | `17`          |                |
| [Mobile FeliCa 4.1](#version-41)            | `18`-`1F`     |                |
| [RC-S962](#high-speed-fram)                 | `20`          |                |
| [RC-S114](#jrem-6k)                         | `31`?         |                |
| [RC-SA00/1](#des-compatible)                | `32`          |                |
| [RC-SA00/2](#des-compatible)                | `33`          |                |
| [RC-SA01/1](#aes-only)                      | `34`          |                |
| [RC-SA01/2](#aes-only)                      | `35`          |                |
| [RC-SA04/1](#cjrc-compliant_1)              | `36`          |                |
| [RC-SA08/1](#dual-interface)                | `3E`          |                |
| [RC-SA24/1](#cjrc-compliant_2)              | `43`          |                |
| [RC-SA20/1](#des-compatible_1)              | `44`          |                |
| [RC-SA20/2](#des-compatible_1)              | `45`          |                |
| [RC-SA21/2](#aes-only)                      | `46`          |                |
| [RC-SA24/1x1](#cjrc-compliant_2)            | `47`          |                |
| [RC-SA21/2x1](#aes-only)                    | `48`          |                |
| [RC-SA14](#jrem-6k)                         | `A2`?         |                |
| [RC-S926](#felica-plug)                     | `E0`          |                |
| [RC-S967 (Plug Mode)](#felica-link)         | `E1`          |                |
| [RC-S965](#felica-lite)                     | `F0`          |                |
| [RC-S966](#felica-lite-s)                   | `F1`          |                |
| [RC-S967 (Lite-S Mode)](#felica-link)       | `F2`          |                |
| [RC-S967 (NFC-DEP Mode)](#felica-link)      | `FF`          |                |

## Naming conventions
*All* FeliCa model names across cards, readers, SAMs, are prefixed with `RC` namespace, **R**emote **C**ard; it is unknown what S would stand for. Each convention noted below may have exceptions, grandfathered in or otherwise.

* RC-S1??
	* Standard (SD) card (PICC) end-products
	* RC-S1?0 is a normal card
	* RC-S1?8 is a token
	* RC-S1?9 is a token module
* RC-S2??
	* Multi-service reader/writer (PCD) products
	* Usually for POS systems
* RC-S3??
	* Reader/writer (PCD) products
* RC-S4??
	* Reader/writer (PCD) ICs
* RC-S5??
	* Secure Access Modules
* RC-S6??
	* Embedded reader modules
* RC-S7??
	* Antenna modules
	* Only seen for Link and Lite-S modules
* RC-S8??
	* Legacy card (PICC) ICs
* RC-S9??
	* Legacy card (PICC) products
	* RC-S96? is for FeliCa Lite series
* RC-SA??
	* A for AES
	* RC-SA0? is SD1
	* RC-SA2? is SD2
	* RC-SA?0 allows DES backwards compatiblity
	* RC-SA?1 only allows AES encryption
	* RC-SA?8 is dual-interface
* RC-S??4
	* CJRC-compliant card ICs/products

### Product forms
| Form name | Description                               |
|-----------|-------------------------------------------|
| A         | Bare die w/ bump on sawn wafer            |
| B         | Bare die w/ bump in tray                  |
| C         | Bare die w/o bump on sawn wafer           |
| D         | Bare die w/o bump in tray                 |
| E?        | Bare die w bump on reel?                  |
| F?        | Bare die w/o bump on reel?                |
| G?        | Bare die w bump on reel?                  |
| H?        | Bare die w/o bump on reel?                |
| S         | Bare die w bump on unsawn wafer           |
| T         | Bare die w/o bump on unsawn wafer         |
| U?        | Plastic-packaged chip w bump (BGA)?       |
| V         | Plastic-packaged chip w/o bump (outline)? |

## SD0[^sd0]

### RC-S830

Unlisted IC module, though referenced by NfcPy. Apparently used by ez-link in Singapore as an early adopter. Does not support some commands like Request System Code or Search Service Code.[@hoktICCard]

* Model name: RC-S830 (likely just the name of a PICC?)[@nfcpyTT3Sony2022]
* IC type: `00`
* Known PICCs:
	* RC-S831[@sonyRCS860Datasheet2003]
	* RC-S833[@sonyFeliCaTechnicalSpecifications2001]
* Hardware core: 8-bit RISC CPU (potentially Fujitsu F^2^MC-8FX or Panasonic AM)
* 1.5KB EEPROM

### RC-S850
Unlisted IC module.

* Model name: Unknown, likely RC-S915 with different software?
* Known PICCs:
	* RC-S850[@sonyRCS860Datasheet2003]
		* With anti-collision
	* RC-S853[@sonyRCS853Datasheet2009]
		* CJRC IC Card standard compliant
		* With anti-collision
		* With leuco-dye ticket rewrite function
		* One cutout bumps in the physical card shape
	* RC-S854
		* CJRC IC Card standard compliant
		* With anti-collision
		* Two cutout bumps in the physical card shape
	* RC-S855[@sonyRCS860Datasheet2003]
		* With anti-collision
		* With leuco-dye ticket rewrite function
* Hardware core: 8-bit RISC CPU (potentially Fujitsu F^2^MC-8FX or Panasonic AM)
* 4KB EEPROM


### RC-S915
* Model name: RC-S915[@sonyFeliCaTechnicalProductsList]
* IC type: `01`
* Known antenna modules:
	* RC-S934F
	* RC-S935F
	* RC-S936[@sonyRCS936Datasheet2005]
		* Token module
		* 2KB EEPROM
		* Does not implement some commands found in RC-S938
	* RC-S938[@sonyRCS938Datasheet2005]
		* Token module
* Known PICCs:
	* RC-S860[@sonyRCS860Datasheet2003]
	* RC-S862
		* Similar to RC-S860
		* With JIS II single-track magnetic stripe
	* RC-S863
	* RC-S864
		* CJRC-compliant?
	* RC-S891[@sonyRCS890Datasheet2009]
* Hardware core: Sony CXD9559
	* 8-bit RISC CPU
	* Potentially Fujitsu F^2^MC-8FX or Panasonic AM core
* 4KB EEPROM

### Token[@sonyRCS890Datasheet2009]
* Model name: RC-S919[@sonyFeliCaTechnicalProductsList]
* IC type: `02`[@nfcpyTT3Sony2022]
* Known PICCs:
	* RC-S890
* 576B EEPROM

### Dual Interface (32KB)[@sonyRCS952Datasheet2005]
IC with physical contacts, potentially for credit/debit cards like Rakuten Edy. Supports both DES and AES encryption, JavaCard applets, ISO/IEC 14443 (NFC-A) and ISO/IEC 7816 (APDU).

* Model name: RC-S952
* IC code: `08`[@sonyFeliCaTechnicalProductsList]
* Known PICCs:
	* RC-S952/3MV
		[@sonyRCS890Datasheet2009]* GlobalPlatform 2.0.1
		* JavaCard OS 2.1.1
		* VSDC 2.4.1
* 32KB EEPROM
* Hardware core: Infineon

### Dual Interface (16KB)[@sonyRCS952Datasheet2005]
IC with physical contacts, potentially for credit/debit cards like Rakuten Edy. Supports both DES and AES encryption, JavaCard applets, ISO/IEC 14443 (NFC-A) and ISO/IEC 7816 (APDU).

* Model name: RC-S953
* IC code: `09`[@sonyFeliCaTechnicalProductsList]
* 16KB EEPROM
* Hardware core: Infineon

### CJRC-compliant[@sonyRCS954Datasheet2009]
Unlisted IC with physical contacts, potentially for credit/debit cards with additional transport card functionality, such as JR East's View Card with Suica. Model number (ending in 4) indicates compliance with CJRC IC Card standard.
Supports both DES and AES encryption, JavaCard applets, ISO/IEC 14443 (NFC-A) and ISO/IEC 7816 (APDU).

* Known model names:
	* RC-S954
	* RC-S957/2[@sonyRCS957SecurityTarget2009]
* IC code: `0C`[@sonyFeliCaTechnicalProductsList]
* Known PICCs:
	* RC-S954/2MV
* FeliCa OS version: Dual OS 1.1
* GlobalPlatform version: 2.0.1
* JavaCard OS version: 2.1.1
* VSDC version: 2.4.1
* Hardware core: Renesas AE45X1-C (H8SX AE-4)[@renesasAE45X1CSecurityTarget2006]
* 36KB EEPROM

### High-speed FRAM
Introduced double data transfer rate (424kbps)

* Known models:
	* RC-S960
		* IC type: `0D`
		* 9KB FRAM
		* Known antenna modules:
			* RC-S970F
			* RC-S979F
		* Known PICCs:
			* RC-S880[@sonyRCS880Datasheet2008]
			* RC-S889[@sonyRCS889Datasheet2010]
		* Hardware core: Fujitsu CXD9861 / MB94RS402 (F^2^MC-8FX)[@sonyRCS960SecurityTarget2007]
		* ROM type: `0F`
	* RC-S962
		* IC type: `20`
		* 4KB FRAM
		* Known antenna modules:
			* RC-S893 (token module[@sonyFeliCaFRAMToken2012])
			* RC-S981F
			* RC-S975F
			* RC-S976F
		* Known PICCs:
			* RC-S885[@sonyRCS885Datasheet2010]
			* RC-S888[@sonyRCS888Datasheet2010]
			* RC-S892 (token[@sonyRCS892Datasheet2011])
		* Hardware core: Fujitsu CXD9916H3 / MB94RS403 (F^2^MC-8FX)[@sonyRCS962SecurityTarget2008]
		* ROM type: `01`
* FeliCa OS version: 3.31

## SD1
Introduced AES encryption.

### DES-compatible[@sonyRCSA00SecurityTarget2012;@sonyRCSA00Datasheet2015]
Supports both DES and AES encryption

* Model name: RC-SA00
* ROM type: `03`
* Known variants:
	* RC-SA00/1x
		* IC type: `32`
		* 8pF input capacitance
		* Known antenna modules:[@sonyFeliCaTechnicalProductsList]
			* RC-S109 (token module[@sonyRCS108Datasheet2014])
			* RC-S109/1 (token module[@sonyRCS1081Datasheet2020])
			* RC-S111 (flexible PCB module[@sonyRCS111Datasheet2021])
			* RC-S111/1 (flexible PCB module)
			* RC-SA02F
			* RC-SA03F
		* Known PICCs:
			* RC-S100[@sonyRCSA00Datasheet2015]
			* RC-S108 (token)
			* RC-S108/1 (token)
	* RC-SA00/2x
		* IC type: `33`
		* 50pF input capacitance
* Known forms: A, B, C, D
* Hardware core: Toshiba T6ND8 (ARMv7-M SecurCore SC300?)
* 6KB EEPROM

### AES-only[@sonyRCSA01SecurityTarget2014]
* Model name: RC-SA01
* ROM type: `03`
* Known variants:
	* RC-SA01/1x
		* IC type: `34`
		* 8pF input capacitance
	* RC-SA01/2x
		* IC type: `35`
		* 50pF input capacitance
* Known forms: A, B, C, D, S, T
* Hardware core: Toshiba T6ND8 (ARMv7-M SecurCore SC300?)
* 6KB EEPROM

### CJRC-compliant[@sonyRCSA04SecurityTarget2013]
Unlisted IC, potentially for transport cards. Model number (ending in 4) indicates compliance with CJRC IC Card standard.
Supports both DES and AES encryption. PICC model name may be RC-S104.

This IC chip was observed under an ICOCA card.

* Model name: RC-SA04/1
* IC type: `36`
* ROM type: `01`
* Known forms: A, B, C, D
* 8pF input capacitance
* Hardware core: Toshiba T6ND8 (ARMv7-M SecurCore SC300?)
* 6KB EEPROM
* One cutout bumps in the physical card shape

### JREM MN67S150-D[@sonyJREMMN67S150DSecurityTarget2014]
Appears to support only AES. PICC model name may be RC-S104

This IC chip was observed under a Suica card.

* IC type: `31`
* ROM type: `05`
* Hardware core: Panasonic MN67S150-D (AM13E)[@panasonicMN67S150SecurityTarget]
* FeliCa OS version: 5.0

### Dual Interface[@sonyRCSA08SecurityTarget2017]
Unlisted IC with physical contacts, potentially for credit/debit cards like Rakuten Edy or JR East View Card. Supports both DES and AES encryption, JavaCard applets, ISO/IEC 14443 (NFC-A) and ISO/IEC 7816 (APDU).
Likely used in conjunction with EMV.

* Known variants:
	* RC-SA08/1
		* IC type: `3E`
		* ROM type: `03`
		* 68pF input capacitance
	* RC-SA08/2
		* IC type: `3E`
		* ROM type: `03`
		* 20pF input capacitance
* Known antenna modules: None, unreleased?
* Known PICCs: None, unreleased?
* Evaluation level: EAL5+
* Hardware core: STM ST31G480 (ARMv6-M SecurCore SC000)
* FeliCa OS version: 5.0

### JREM 6K[@sonyJREM6KSecurityTarget2019]
Unlisted IC, likely a precursor to SD2 potentially for transport cards. Model number (ending in 4) indicates compliance with CJRC IC Card standard

* Model number: RC-SJ6K? [^j6k] or RC-SA14
* Known PICC: RC-S114
	* This is likely just the model number for the PICC rather than the IC itself (RC-S1xx)
* IC type: `A2`? (derived from FeliCa OS version)
* ROM type: `01`? (derived from FeliCa OS version)
* FeliCa OS version: 5.0 code `A201`
* Hardware core: Toshiba T6ND8 (ARMv7-M SecurCore SC300?)

## SD2[@sonyFeliCaSD2SecurityTarget2020]
Released in 2021.

Introduced:

* Extended Overlap Services
* Value Limited Purse Services
* Integrated FeliCa Lite-S
* AES-MAC-protected commands
* Integrated FeliCa Secure ID

* ROM type: `01`
* Hardware core: Fujitsu CXD90056 (F^2^MC-8FX?)
* FeliCa OS version: 5.0 Code DF0D
* Known forms: A, C

### DES-compatible
Supports both DES and AES encryption

* Model name: RC-SA20
* Known variants:
	* RC-SA20/1x
		* IC type: `44`
		* Parasitic input capacitance
		* Known antenna modules:[@sonyFeliCaTechnicalProductsList]
			* RC-S129/1 (token module)[@sonyRCS128Datasheet2021]
			* RC-S131/1 (flexible PCB module)[@sonyRCS131Datasheet2021]
			* RC-SA22F
		* Known PICCs:
			* RC-S120[@sonyRCS120Datasheet2020]
			* RC-S128/1 (token)
			* RC-S136 (Edy Oshiharai Keyholder[@kurogoOshiharai2021;@sonyOshiharai])
	* RC-SA20/3x
		* IC type: `44`
		* Parasitic input capacitance
	* RC-SA20/2x
		* IC type: `45`
		* 50pF input capacitance
	* RC-SA20/4x
		* IC type: `45`
		* 50pF input capacitance
* 6KB FRAM

### AES-only
* Model name: RC-SA21
* Known variants:
	* RC-SA21/2x
		* IC type: `46`
		* 50pF input capacitance
		* 4KB FRAM
	* RC-SA21/2x1
		* IC type: `48`
		* 50pF input capacitance
		* 6KB FRAM

### CJRC-compliant
Unlisted IC, potentially for transport cards. Model number (ending in 4) indicates compliance with CJRC IC Card standard. PICC model name may be RC-S124
Supports both DES and AES encryption.

* Model name: RC-SA24
* Known variants:
	* RC-SA24/1x
		* IC type: `43`
		* Parasitic input capacitance
		* 10KB FRAM
	* RC-SA24/3x
		* IC type: `43`
		* Parasitic input capacitance
		* 10KB FRAM
	* RC-SA24/1x1
		* IC type: `47`
		* Parasitic input capacitance
		* 6KB FRAM
	* RC-SA24/3x1
		* IC type: `47`
		* Parasitic input capacitance
		* 6KB FRAM

## FeliCa Lite[@sonyFeliCaLiteDatasheet2011]
* Model name: RC-S965
* IC type: `F0`[@sonyFeliCaTechnicalProductsList]
* Known antenna modules:
	* RC-S701 (Seal)
	* RC-S710 (Compact)
	* RC-S978F
	* RC-S980F (Roll)
* Known PICCs:
	* RC-S886
	* RC-S887 (Thin card)

## FeliCa Lite-S
* Model name: RC-S966[@sonyFeliCaTechnicalProductsList]
* IC type: `F1`
* Known antenna modules:
	* RC-S982
* Known modules:
	* RC-S711 (Compact)[@sonyFeliCaLiteSAntennaModule2014]
	* RC-S712

## FeliCa Plug[@sonyFeliCaPlugDatasheet2021]
Programmable NFC Type 3 compliant Tag

* Model name: RC-S926
* IC type: `E0`[@sonyFeliCaTechnicalProductsList]
* Known modules:
	* RC-S801
	* RC-S802 (Compact module)

## FeliCa Link[@sonyFeliCaLinkDatasheet2021]
Continuation of FeliCa Plug with Lite-S capabilities interfaced with I2C

* Known variants:
	* RC-S967/1V
		* Without reader/writer capability
	* RC-S967/2V
		* With reader/writer capability
* Known modules:
	* RC-S730 (NFC module with I2C interface)
	* RC-S732 (Compact module)[@sonyFeliCaLinkCompactDatasheet2021]
* IC types:[@sonyFeliCaTechnicalProductsList]
	* Lite-S / Host Through modes: `F2`
	* Plug mode: `E1`
	* NFC-DEP mode: `FF`

## Mobile FeliCa
A JavaCard applet seperately developed and licensed by FeliCa Networks Inc., a subsidiary of Sony jointly owned by NTT Docomo and JR East.

* Known antenna modules: N/A
* Known PICCs: N/A

Within the Mobile FeliCa Client Android application, there are references to two implementation types:

* `FelicaSe` (Secure Element?)
* `FelicaGp` (GlobalPlatform)

Special thanks to [@eggman](https://qiita.com/eggman/items/27d988fe5c0be2c38a33) on Qiita for gathering data on `FelicaSe` chips.

### Version 1.0[@sonyMobileFeliCa10SecurityTarget2006]
* IC type: `06`-`07`[@sonyFeliCaTechnicalProductsList]
* Hardware core: Sony CXD3715GG/GU-x version 2.1
	* 8-bit RISC
	* Potentially Fujitsu F^2^MC-8FX or Panasonic AM core
	* 9KB EEPROM

### Version 2.0
* IC type: `10`-`13`
* Known hardware cores (variants):
	* Sony CXD3717GG[@jisecMobileFeliCa20CXDReport2007]
		* 8-bit RISC (?; implied by series from version 1.0)
		* Potentially Fujitsu F^2^MC-8FX or Panasonic AM core
		* IC type: `10`?
	* Renesas HD65256D (AE56D) (H8SX AE-5)[@jisecMobileFeliCa20AE56DReport2007;@renesasAE56DSecurityTarget2007;@kuritaApplicationVDMVienna2015]
		* IC type: `11`?
	* Renesas HD65256D1 (AE56D1) (H8SX AE-5)[@jisecMobileFeliCa20AE56D1Report2005;@renesasAE56D1SecurityTarget2009]
		* IC type: `12`?
	* Toshiba T6ND4 (ARMv4 SecurCore SC100)[@jisecMobileFeliCa20T6NReport2010;@toshibaT6ND4SecurityTarget2010]
		* IC type: `13`?

### Version 3.0
* IC type: `14`-`15`
* Known hardware cores (variants):
	* Toshiba T6NE1 (ARMv4 SecurCore SC100)[@toshibaT6NE1SecurityTarget2013;@felicanetworksMobileFeliCa30T6NE1SecurityTarget2016]
		* IC type: `14`?
		* Plastic-packaged form factor is T6NE6
	* Samsung S3CS9AB (ARMv4 SecurCore SC100)[@samsungKansaSecurityTarget2013;@felicanetworksMobileFeliCa30S3CS9AB2016]
		* IC type: `15`?

### Mobile Suica
It appears that Suica has unique functionality on Mobile FeliCa devices, though maybe only on Apple devices, as seen by the different IC type observed in [this screenshot](https://qiita.com/treastrain/items/e8dc5084a663f09ff469#apple-pay-%E3%81%AE-suica-%E3%81%8C%E6%8C%81%E3%81%A4-felica-%E3%82%B7%E3%82%B9%E3%83%86%E3%83%A0%E3%82%B3%E3%83%BC%E3%83%89).

Also observed on Suica from iPhone 12 Pro, which should have Mobile FeliCa applets.
* IC type: `16`

### Version 4.0
* IC type: `17`
* Hardware core: GlobalPlatform-compliant Secure Element

### Version 4.1
* IC type: `18`-`1F`
* Hardware core: GlobalPlatform-compliant Secure Element

---
[^sd0]: Unofficial name for pre-SD1 technology
[^j6k]: Derived from report number