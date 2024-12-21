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
set file_contents [read_file $filename] 
puts $file_contents