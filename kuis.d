module kuis4.kuis;

import std.stdio;
import std.container;
import std.container.array;
import std.algorithm;
import std.algorithm.sorting;


void main(){
    int n;
    write("banyak input: ");
    readf("%d\n", n);
    
    int i = 0;
    int num;
    int[] arr;
    do{
        write("masukkan angka ", i+1, ": ");
        readf("%d\n", num);
        arr ~= num;
    } while (++i < n);
    writeln(arr);
    
    int[] index = new int[arr.length];
    makeIndex!("a < b")(arr, index);
    writeln(index);
    index.each!(arr => writef("%d ", arr));
}