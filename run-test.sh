#--server 4870
time stdbuf -o0 speedtest-cli "$@" --n_down 4 --n_up 2  | grep --line-buffered -e "\[data\]"|tee -a ${BASH_SOURCE[0]}.log
