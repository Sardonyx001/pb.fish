function pb --description "Uploads a file or data to a 0x0 paste bin service"
    function show_help
        echo "pb [options] filename"
        echo or
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
    end
    echo pb
end
