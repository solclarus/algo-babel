# algo-babel

A repository for implementing algorithms across multiple programming languages to explore language fundamentals.

## Prerequisites

Install [Docker](https://docs.docker.com/get-docker/).

## Quick Start

```bash
# 1. Clone
git clone https://github.com/solclarus/algo-babel.git
cd algo-babel

# 2. Build Docker image (run once)
make docker-build

# 3. Run
make helloworld
```

## Usage

```bash
make <lang>           # Run all algorithms in a language
make <lang>/<algo>    # Run a specific algorithm
```

**Languages:** `c`, `cpp`, `py`, `js`

## Structure

```
lang/
└── <lang>/
    └── <algorithm>/
        └── main.<ext>
```

## Implemented Algorithms

| Algorithm  | C   | C++ | Python | JS  |
| ---------- | --- | --- | ------ | --- |
| helloworld | ✅  | ✅  | ✅     | ✅  |
| fizzbuzz   | ✅  | ✅  | ✅     | ✅  |
