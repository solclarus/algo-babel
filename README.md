A repository for implementing algorithms across multiple programming languages to explore language fundamentals.

## Prerequisites

Install [Docker](https://docs.docker.com/get-docker/).

## Quick Start

#### 1. Clone

```sh
git clone https://github.com/solclarus/algo-babel.git && cd algo-babel
```

#### 2. Build Docker image

```sh
make docker
```

#### 3. Run

```sh
make
```

## Usage

```sh
make <lang>        # e.g. make c
make <lang>/<algo> # e.g. make c/fizzbuzz
```

## Structure

```
lang/
└── <lang>/
    └── <algorithm>/
        └── main.<ext>
```

## Implemented Algorithms

| Algorithm  | C   | C++ | Python | JavaScript |
| ---------- | --- | --- | ------ | ---------- |
| helloworld | ✅  | ✅  | ✅     | ✅         |
| fizzbuzz   | ✅  | ✅  | ✅     | ✅         |
