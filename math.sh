function add() {
    local result=0
    for arg in "$@"; do
        result=$(echo "$result + $arg" | bc)
    done
    echo "$result"
}

function sub(){
	local result=$1
	shift
	for arg in "$@"; do
		result=$(echo "$result - $arg" | bc)
	done
	echo "$result"
}

function mul(){
	local result=$1
	shift
	for arg in "$@"; do
		result=$(echo "$result * $arg" | bc)
	done
	echo "$result"
}

function div(){
	local result=$1
	shift
	for arg in "$@"; do
		result=$(echo "$result / $arg" | bc)
	done
	echo "$result"
}
