## Authentication Start (DES)[@sonyFeliCaSDManual2024;@sonyFeliCaMutualAuthenticationPatent2008;@rrgProxmark3FeliCa2024]

!!! info "Official Name"

    Authentication1

Initiate mutual authentication with PICC

| Current Mode    | Any |
|-----------------|-----|
| Mode Transition | 1   |

=== "Command"

	| Field              | Size             | Note                               |
	|--------------------|------------------|------------------------------------|
	| Code               | 1                | `0x10`                             |
	| IDm                | 8                |                                    |
	| Number of Areas    | 1                | $1 <= \vert A \vert <= (8/16/32?)$ |
	| Area Code List     | $2\vert A \vert$ | Little-endian                      |
	| Number of Services | 1                | $1 <= \vert S \vert <= (8/16/32?)$ |
	| Services Code List | $2\vert S \vert$ | Little-endian                      |
	| Random Challenge A | 8                | $\text{3DESEnc}_{K_b}(R_a)$        |

=== "Response"

	| Field                | Size | Note                        |
	|----------------------|------|-----------------------------|
	| Code                 | 1    | `0x11`                      |
	| IDm                  | 8    |                             |
	| Challenge Response A | 8    | $\text{3DESEnc}_{K_a}(R_a)$ |
	| Random Challenge B   | 8    | $\text{3DESEnc}_{K_a}(R_b)$ |

## Authentication Finish (DES)[@sonyFeliCaSDManual2024;@sonyFeliCaMutualAuthenticationPatent2008;@rrgProxmark3FeliCa2024]

!!! info "Official Name"

    Authentication2

Finalise mutual authentication with PICC

| Current Mode    | 1 |
|-----------------|---|
| Mode Transition | 2 |

=== "Command"

	| Field                | Size | Note                        |
	|----------------------|------|-----------------------------|
	| Code                 | 1    | `0x12`                      |
	| IDm                  | 8    |                             |
	| Challenge Response B | 8    | $\text{3DESEnc}_{K_b}(R_b)$ |

=== "Response"

	| Field               | Size | Note           |
	|---------------------|------|----------------|
	| Code                | 1    | Hex value `13` |
	| IDtc (?)            | 8    |                |
	| IDi (Issue ID?)     | 8    |                |
	| PMi (Parameter ID?) | 8    |                |

## Authentication Start (AES)[@sonyFeliCaSDManual2024;@onakasuitaCommands]

!!! info "Official Name"

    Authentication1 v2

!!! warning "Unconfirmed"

	The field format for this command is unknown.

Initiate mutual authentication in AES with PICC

| Current Mode    | Any |
|-----------------|-----|
| Mode Transition | 1   |

=== "Command"

	| Field | Size | Note |
	|-------|------|------|
	| Code  | 1    | `40` |
	| IDm   | 8    |      |
	| ??    | ??   |      |

=== "Response"

	| Field         | Size | Note |
	|---------------|------|------|
	| Response Code | 1    | `41` |
	| IDm           | 8    |      |
	| ??            | ??   |      |

## Authentication Finish (AES)[@sonyFeliCaSDManual2024;@onakasuitaCommands]

!!! info "Official Name"

    Authentication2 v2

!!! warning "Unconfirmed"

	The field format for this command is unknown.

Finalise mutual authentication in AES with PICC

| Current Mode    | 1 |
|-----------------|---|
| Mode Transition | 2 |

=== "Command"

	| Field | Size | Note |
	|-------|------|------|
	| Code  | 1    | `42` |
	| IDm   | 8    |      |
	| ??    | ??   |      |

=== "Response"

	| Field | Size | Note |
	|-------|------|------|
	| Code  | 1    | `43` |
	| ??    | ??   |      |
