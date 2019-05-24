#!/bin/bash
# get directory fo the script (assumed to be located in the data directory)
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
echo "$DIR"
data_urls=(
    "http://yann.lecun.com/exdb/mnist/train-images-idx3-ubyte.gz"
    "http://yann.lecun.com/exdb/mnist/train-labels-idx1-ubyte.gz"
    "http://yann.lecun.com/exdb/mnist/t10k-images-idx3-ubyte.gz"
    "http://yann.lecun.com/exdb/mnist/t10k-labels-idx1-ubyte.gz"
)

for url in "${data_urls[@]}"; do
    wget $url -O "$DIR/$(basename $url)"
done
