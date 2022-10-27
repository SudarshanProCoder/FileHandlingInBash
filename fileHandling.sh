#!/bin/sh

#
# @author : sudarshan date coder
#

    echo "*********************************************"
    echo "*             1) Removing                   *"                    
    echo "*             2) Coping                     *"               
    echo "*             3) Renaming                   *"
    echo "*             4) List of Files              *"
    echo "*             5) Display File content       *"
    echo "*             6) Create New File            *"
    echo "*********************************************"
    echo "-----------------------------------------------"
    echo -n "Enter the operation : "
    read op
    echo "***********************************************"
    


Removing () {

    echo -n 'enter the file name : '
    read file


    if [ -f "$file" ]
    then 
        rm  $file
        echo "file removed successfully"
    else
        echo "$file is not a file "

    fi


}

Coping () {
    echo -n 'enter the file name : '
    read file


    if [ -f "$file" ]
    then 
        echo -n "enter the target file : "
        read targ

        cp $file $targ
        echo "file copied successfully"
        
    else
        echo "$file is not a file "

    fi
   
}

Renaming () {
    echo -n 'enter the file name : '
    read file


    if [ -f "$file" ]
    then 
        echo -n "Enter the new name : "
        read new
        mv $file $new
        echo "file name change successfully"
    else
        echo "$file is not a file "

    fi
    

}
ListOfFiles () {
    echo "List of files : "
    for files in *
    do  
        if [ -f "$files" ]; then
            echo "$files"
        fi
    done

}

Display () {
    echo -n "Enter the file : "
    read file1
    
    if [  -f "$file1" ]; then   
        more $file1

    fi

}

NewFile () {

    echo -n "Enter the file name : "
    read Filename

   cat >  $Filename
    
}
case $op 
in
1) Removing ;;
2) Coping ;;
3) Renaming ;;
4) ListOfFiles ;;
5) Display ;;
6) NewFile ;;
*) echo "Error"
exit
esac


bash fileHandling.sh

