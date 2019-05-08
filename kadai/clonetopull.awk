{
    if ( index($1, "#" ) != 1) {
        printf("cd %s\n",$NF)
        print "git pull"
        print "cd .."
    }
}
