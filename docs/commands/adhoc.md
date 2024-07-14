---
title: Ad-hoc
---

## Activate[@sonyFALPPatent2002]

!!! warning "Unconfirmed"

	The field format for this command is unknown and is guessed from [Activate2](#activate2).

=== "Command"

	| Field  | Size | Note   |
	|--------|------|--------|
	| Code   | 1    | `0x??` |
	| IDm    | 8    |        |
	| Flags? | 1    |        |

=== "Response"

	| Field   | Size | Note   |
	|---------|------|--------|
	| Code    | 1    | `0x??` |
	| IDm     | 8    |        |
	| Status? | 1    |        |

## Activate2[@sonyFALPPatent2002;@sonyFeliCaPushArduino2010]

!!! warning "Unconfirmed"

	The field format for this command is unknown and is guessed.

=== "Command"

	| Field  | Size | Note   |
	|--------|------|--------|
	| Code   | 1    | `0xA4` |
	| IDm    | 8    |        |
	| Flags? | 1    |        |

=== "Response"

	| Field   | Size | Note   |
	|---------|------|--------|
	| Code    | 1    | `0xA5` |
	| IDm     | 8    |        |
	| Status? | 1    |        |

## Inactivate[@sonyFALPPatent2002]

!!! warning "Unconfirmed"

	The field format for this command is unknown and is guessed from [Activate2](#activate2).

=== "Command"

	| Field  | Size | Note   |
	|--------|------|--------|
	| Code   | 1    | `0x??` |
	| IDm    | 8    |        |
	| Flags? | 1    |        |

=== "Response"

	| Field   | Size | Note   |
	|---------|------|--------|
	| Code    | 1    | `0x??` |
	| IDm     | 8    |        |
	| Status? | 1    |        |

## Push[@sonyFALPPatent2002;@sonyFeliCaPushArduino2010]

=== "Command"

	| Field  | Size | Note            |
	|--------|------|-----------------|
	| Code   | 1    | `0xB0`          |
	| IDm    | 8    |                 |
	| Length | 1    | $1 <= n <= 224$ |
	| Data   | $n$  |                 |

=== "Response"

	| Field           | Size | Note   |
	|-----------------|------|--------|
	| Code            | 1    | `0xB1` |
	| IDm             | 8    |        |
	| Length Received | 1    |        |

## Pull[@sonyFALPPatent2002]

!!! warning "Unconfirmed"

	The field format for this command is unknown and is guessed from [Push](#push).

=== "Command"

	| Field          | Size | Note            |
	|----------------|------|-----------------|
	| Code           | 1    | `0x??`          |
	| IDm            | 8    |                 |
	| Maximum Length | 1    | $1 <= n <= 224$ |

=== "Response"

	| Field  | Size | Note            |
	|--------|------|-----------------|
	| Code   | 1    | `0xB1`          |
	| IDm    | 8    |                 |
	| Length | 1    | $1 <= n <= 224$ |
	| Data   | $n$  |                 |

## Get Ad-hoc Status[@sonyFALPPatent2002]

!!! warning "Unconfirmed"

	The field format for this command is unknown and is guessed.

=== "Command"

	| Field  | Size | Note   |
	|--------|------|--------|
	| Code   | 1    | `0x??` |
	| IDm    | 8    |        |

=== "Response"

	| Field   | Size | Note   |
	|---------|------|--------|
	| Code    | 1    | `0xA5` |
	| IDm     | 8    |        |
	| Status? | 1    |        |
