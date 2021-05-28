rp() {
    if [ -n $1 ]
    then
        nvim $(rg -l $1 . | fp)
    else
        echo "Well this is shit"
    fi
}

rpe() {
    exec nvim $(rg -l "$@")
}
