function pb --description "Uploads a file or data to a 0x0 paste bin service"

    # Init variables
    set -l VERSION "v2023.12.04"
    set -l ENDPOINT "https://0x0.st"
    set -l DATA ""
    set -l EXT ""

    function show_help
        echo "pb [options] filename"
        echo "or "
        echo "(command-with-stdout) | pb"
        echo ""
        echo "Uploads a file or data to the tilde 0x0 paste bin"
        echo ""
        echo "OPTIONAL FLAGS:"
        echo "  -h | --help)                    Show this help"
        echo "  -v | --version)                 Show current version number"
        echo "  -f | --file)                    Explicitly interpret stdin as filename"
        echo "  -c | --color)                   Pretty color output"
        echo "  -s | --server server_address)   Use alternative pastebin server address"
        echo "  -e | --extension bin_extension) Specify file extension used in the upload"
        echo ""
        echo "Example usage:"
        echo "  # Upload 'scores.txt' to the pastebin"
        echo "  pb scores.txt"
        echo "  # Upload piped output to the pastebin"
        echo "  echo 'Secret info' | pb"
        echo "  # Upload a list of javascript files to the pastebin individually"
        echo "  find . -type f -name '*.js' -print | pb -f"
        echo "  # Upload a file to a different pastebin endpoint"
        echo "  pb -s http://0x0.st scores.txt"
    end

    function show_usage
        echo "usage: pb [-hfvcux] [-s server_address] filename"
    end

    # helper for program exit
    function die
        set msg $argv[1]
        set code (math (count $argv) > 1 ? $argv[2] : 1)

        # output message to stdout or stderr based on code
        if test -n "$msg"
            if test $code -eq 0
                echo "$msg"
            else
                echo "$msg" >&2
            end
        end
        exit $code
    end

    echo pb
end
