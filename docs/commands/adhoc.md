---
title: Ad-hoc
---

# Activate2[@sonyFeliCaPushArduino2010]

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

# Push[@sonyFeliCaPushArduino2010]

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
