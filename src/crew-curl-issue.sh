#!/bin/sh
main () {
while [ "$1" ]; do
    case $1 in
        -p|--package|--program)
            pack=$2
            shift 1
            ;;
        *)
            exit 1
            ;;
    esac
    shift 1
done
}
root() {
while sleep 1
do
	if ! yes | crew install "$pack"; then
		yes | crew install "$pack"
	fi
	if yes | crew install "$pack"; then
		printf 'Installed %b\n' "$pack" && exit 0
	fi
done
}
main "$@"
root
