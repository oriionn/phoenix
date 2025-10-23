# Phoenix
A small tool written in C to retrieve your Linux installation date

## Usage
### Classic
```
❯ phoenix
10 days, 1 hours and 18 minutes
```
#### Long option
You can use the `--long` option to display all values, even when they are 0.
```
❯ phoenix --long
0 years, 0 months, 10 days, 1 hours and 21 minutes
```

### Raw mode
Phoenix offers a parameter for retrieving raw values, i.e. the system creation date in timestamp (seconds).
```
❯ phoenix --raw
1750001092
```

### Only one unit
Phoenix also offers the `--unique <unit>` option for displaying a single value. The option is therefore incompatible with `--long`.

It must be accompanied by a value; the available values are :
- `years` / `y`
- `months` / `m`
- `days` / `d`
- `hours` / `h`
- `minutes` / `min`

```
❯ phoenix --unique hours
241 hours

❯ phoenix --unique days
10 days
```

### Translation
You can use a translated version of phoenix (currently only available in French).

The translation is available with the `--lang <lang>` option. This is compatible with both classic and only one unit modes.

```
❯ phoenix --lang fr
10 jours, 1 heures et 33 minutes

❯ phoenix --lang fr --unique hours
241 heures
```

## Installation
### Prerequisites
To install this tool, you need :
- `git`
- `gcc`
- `make`

### Installation
To install the tool, simply run this command sequence:
```bash
git clone https://github.com/oriionn/phoenix.git
cd phoenix
make install
```

## Build
### Prerequisites
To build this tool, you need :
- `git`
- `gcc`
- `make`

### Building
To build the tool, simply execute this command sequence:
```bash
git clone https://github.com/oriionn/phoenix.git
cd phoenix
make build
```
#### Arch Linux
Installation
```bash
git clone https://github.com/oriionn/phoenix && cd phoenix
makepkg -si --cleanbuild
cd .. && rm -fr phoenix
```
Uninstall 
```bash
# pacman -R phoenix-git
```
