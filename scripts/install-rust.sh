#!/bin/bash
echo Installing Rust ...
cd $HOME/environment
#curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
aws s3 cp s3://iapp-archconf-workshop/rustup-init.sh rustup-init.sh
sudo chmod +x rustup-init.sh
./rustup-init.sh -y
export PATH=$PATH:$HOME/.cargo/bin
source $HOME/.cargo/env
rustup default stable
echo $(rustup --version)
echo Testing rust ...
cargo new dummy --bin
cd dummy
cargo run
echo "**IMPORTANT** Now run the command source $HOME/.cargo/env"