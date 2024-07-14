!!! info "Modes"

	Modes are confirmed in several references, however it is unknown if DES issuance uses different commands to AES issuance, or if an implementation also takes into account the current mode it is in.

## Register Area[@sonyRCS430COperationalDescription;@sonyRCS441CUsersManual1999;@sonyRCS493BProductSpecifications2008;@sonyFeliCaHighSpeedPatent2011]


!!! warning "Unconfirmed"

	The field format for this command is unknown, and is just a guess.

| Current Mode    | 2 | 3 |
|-----------------|---|---|
| Mode Transition | 3 | 3 |

=== "Command"

	| Field                     | Size | Note                                                           |
	|---------------------------|------|----------------------------------------------------------------|
	| Code                      | 1    | `0x??`                                                         |
	| IDtc                      | 8    |                                                                |
	| Area code                 | 2    | Required outside of encrypted package to select decryption key |
	| Area registration package | 2    |                                                                |

=== "Response"

	| Field          | Size | Note   |
	|----------------|------|--------|
	| Code           | 1    | `0x??` |
	| IDtc           | 8    |        |
	| Status Flag 1? | 1    |        |
	| Status Flag 2? | 1    |        |

### Area registration package[@sonyFeliCaPatent1998]

This bytearray is encrypted (with what padding? with CBC?) with its parent area's key.

| Field                          | Size  | Note      |
|--------------------------------|-------|-----------|
| Start service code (Area code) | 2     |           |
| End service code               | 2     |           |
| Number of allocated blocks     | 1?    |           |
| Area key                       | 8/16? | See below |
| Area key version?              | 2     |           |
| MAC                            | 8/16? | See below |

The length of the area key may depend on the encryption type that the created area would use. It is unknown how both an DES and AES key would be provisioned for one area.

The MAC may be a CBC-MAC on DES/AES as it is used in other areas of implementation; hence, the card would only need to validate by comparing the area codes outside and within the encrypted package, then the MAC. 

## Register Service[@sonyRCS430COperationalDescription;@sonyRCS441CUsersManual1999;@sonyRCS493BProductSpecifications2008;@sonyFeliCaHighSpeedPatent2011]

!!! warning "Unconfirmed"

	The field format for this command is unknown, and is just a guess.

| Current Mode    | 2 | 3 |
|-----------------|---|---|
| Mode Transition | 3 | 3 |

=== "Command"

	| Field                        | Size | Note                                                           |
	|------------------------------|------|----------------------------------------------------------------|
	| Code                         | 1    | `0x??`                                                         |
	| IDtc                         | 8    |                                                                |
	| Service code                 | 2    | Required outside of encrypted package to select decryption key |
	| Service registration package | 2    |                                                                |

=== "Response"

	| Field          | Size | Note   |
	|----------------|------|--------|
	| Code           | 1    | `0x??` |
	| IDtc           | 8    |        |
	| Status Flag 1? | 1    |        |
	| Status Flag 2? | 1    |        |

### Service registration package

This bytearray is encrypted (with what padding? with CBC?) with its parent area's key.

| Field                      | Size  | Note      |
|----------------------------|-------|-----------|
| Service code               | 2     |           |
| Number of allocated blocks | 1?    |           |
| Service key                | 8/16? | See below |
| Service key version?       | 2     |           |
| MAC                        | 8/16? | See below |

The length of the service key may depend on the encryption type that the created area would use. It is unknown how both an DES and AES key would be provisioned for one service.

The MAC may be a CBC-MAC on DES/AES as it is used in other areas of implementation; hence, the card would only need to validate by comparing the service codes outside and within the encrypted package, then the MAC. 

## Set Relational Service[@sonyRCS493BProductSpecifications2008]

## Register Issue ID[@sonyRCS430COperationalDescription;@sonyRCS441CUsersManual1999;@sonyRCS493BProductSpecifications2008;@sonyFeliCaHighSpeedPatent2011]

Sets:

* Issue ID (IDi)
* Issue parameters (PMi)
* System code
* Area 0000 key

Resets services (and areas?) and initialises memory allocation.

| Current Mode    | 2 | 3 |
|-----------------|---|---|
| Mode Transition | 3 | 3 |

## Register Issue ID Extended[@sonyRCS493BProductSpecifications2008]

Sets:

* Issue ID (IDi)
* Issue parameters (PMi)
* System code
* System key
* Area 0000 key

Resets services (and areas?) and initialises memory allocation.

Note: the below is inferred from the Register Issue ID command.

| Current Mode    | 2 | 3 |
|-----------------|---|---|
| Mode Transition | 3 | 3 |

## Separate System[@sonyFeliCaMultiInterfacePatent2013;@sonyFeliCaSeparateSystemsPatent2005]

Performs system separation on a PICC, effectively providing multiple logical PICCs that can be selected by a reader on the one physical IC.

## Change System Block[@sonyFeliCaHighSpeedPatent2011]

| Current Mode    | 3 |
|-----------------|---|
| Mode Transition | 3 |

## Register Manufacture ID[@sonyRCS430COperationalDescription;@sonyRCS441CUsersManual1999;@sonyFeliCaHighSpeedPatent2011]

For manufacturing purposes, accessible on unfused cards where IDm is all `00`. Sets:

* Manufacture ID (IDm)
* Manufacture parameters (PMm)
* System code
* System key
* Area 0000 key

Clears Issue ID (IDi) and Issue parameters (PMi).

| Current Mode    | 2 | 3 |
|-----------------|---|---|
| Mode Transition | 3 | 3 |
