# Skeleton CLI Shell

Skeleton CLI Shell (skeleton-cli-sh) is a flexible and extensible framework for building command-line interfaces with modular subcommands. It provides a skeleton structure for developing CLI applications in shell script.

We have released a CLI tool implemented in reference to the [bsdinstall](https://man.freebsd.org/cgi/man.cgi?bsdinstall(8)) command circa 2015 in a form that can be used as a framework.

## Features

- Modular structure with easily addable subcommands
- Shared library for common functions
- Dynamic subcommand discovery
- Consistent help system
- Flexible option parsing

## Directory structure

```
├── README.md
├── skeleton-cli-sh
├── subcommands/
│   └── example
├── lib/
│   └── common.sh
└── tests/
    └── test_framework.sh
```

## Usage

1. Clone this repository
2. Add your subcommands to the `subcommands/` directory
3. Implement your subcommand logic
4. Run `./skeleton-cli-sh <subcommand> [options]`

For more detailed information, see the comments in the code.

## Adding a New Subcommand

To add a new subcommand:

1. Create a new file in the `subcommands/` directory
2. Implement the subcommand logic, following the pattern in the `example` subcommand
3. Ensure you source the common library: `source "${LIB_DIR}/common.sh"`
4. Make the file executable: `chmod +x subcommands/your-new-subcommand`

## License

This project is licensed under the [MIT License](./LICENSE).
