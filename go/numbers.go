package main;

import (//"bufio";
	"fmt";
	//"io";
	"io/ioutil";
	"os";)
	//"strconv";)

// function to check if there was an error
func check(e error) {
    if e != nil {
	panic(e);
    }
}

// function to read in the file and return the contents as a string
func readFile(file_name string) string {
    contents, err := ioutil.ReadFile(file_name);
    check(err);
    //fmt.Print(string(contents));
    return string(contents);
}

// functino to write the file
func writeFile(file_name string, contents string) {
    err := ioutil.WriteFile(file_name, []byte(contents), 0644);
    check(err)
    return
}

// function to tell if a single character is a digit
func isDigit(char string) bool {
    var digits = [...]string {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9" };
    for i := 0; i < 10; i++ {
	if char == digits[i] {
	    return true;
	}
    }
    return false;
}

// function to parse the numbers out of the input
func parseOutNumbers(in string) string {
    if len(in) == 0 {
	return "";
    } else if isDigit(string(in[0])) {
        return parseOutNumbers(in[1:]);
    } else {
	return string(in[0]) + parseOutNumbers(in[1:]);
    }
}

// main function
func main() {
    var file_name_in string = os.Args[1];
    var contents string = readFile(file_name_in);
    var parsed string = parseOutNumbers(contents);
    
    fmt.Print("Enter an output file name: ");
    var file_name_out string;
    fmt.Scanln(&file_name_out);
    writeFile(file_name_out, parsed);
    fmt.Println("finished");
}
