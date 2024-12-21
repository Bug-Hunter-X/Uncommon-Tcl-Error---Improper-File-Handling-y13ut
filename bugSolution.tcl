proc read_file {filename} { 
    set fp [open $filename r] 
    if {$fp == -1} { 
        return -code error "Could not open file: $filename" 
    } 
    set contents [read $fp] 
    close $fp 
    return $contents 
} 

set filename "my_file.txt" 
catch {set file_contents [read_file $filename]} result 

if {[string length $result] > 0} { 
    puts "Error: $result" 
} else { 
    puts $file_contents 
}

#Alternative solution using try-catch block (Tcl 8.6 and later) 
#try {
#    set file_contents [read_file $filename]
#    puts $file_contents
#} catch {err}
#{
#    puts "Error: $err"
#} 
