# pb.fish: a quick and dirty fish function for using 0x0 pastebin services

credits go to the creator of the original shell script, [tomasino](https://tildegit.org/tomasino/pb) and to the creator(s) of [0x0.st](https://github.com/mia-0/0x0)

all i did was to make it rewrite it in fish since i was too lazy to try and make it work on macos (cross-platform problems).

You can install the plugin with [fisher](https://github.com/jorgebucaran/fisher) :

## Installation (copied from original repo)

```shell
fisher install sardonyx001/pb.fish
```

Or copy `functions/pb.fish` to `~/.config/fish/functions` and source it.

## Usage

Upload 'scores.txt' to the pastebin

```shell
pb scores.txt
```

Upload piped output to the pastebin

```shell
echo 'Secret info' | pb
```

Upload a list of javascript files to the pastebin individually

```shell
find . -type f -name '*.js' -print | pb -f
```

Upload a file to a different pastebin endpoint. For a list of available endpoints, see [0x0.st](https://0x0.st)

```shell
pb -s http://0x0.st scores.txt
```

Re-upload an image from the web

```shell
curl -s https://tildegit.org/_/static/img/gitea-lg.png | pb -e "png"
```

### Options

```shell
-h | --help)                    Show this help
-v | --version)                 Show current version number
-f | --file)                    Explicitly interpret stdin as filename
-c | --color)                   Pretty color output
-s | --server server_address)   Use alternative pastebin server address
-e | --extension bin_extension) Specify file extension used in the upload
```

## TODO

- Support more pastebin services with different options/rules for uploading files like:

  - https://uguu.se/
  - https://termbin.com/
  - https://privatebin.info/

- Overengineer it to be prettier with charmbraclet's [gum](https://github.com/charmbracelet/gum)
