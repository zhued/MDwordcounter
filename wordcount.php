<?php
$options = getopt("h::");
require('Parsedown.php');
    $Parsedown = new Parsedown();
    $str = file_get_contents($argv[1]);
    $str = $Parsedown->text($str);
    $str = preg_replace('/<(code|style|blockquote)(?:(?!<\/\1).)*?<\/\1>/s', '', $str);//remove all code, style and blockquotes
    $str = preg_replace("/\```[^)]+\```/", '', $str); //remove all between ```
   	$str = preg_replace('/[^a-z0-9]/i', '_', strip_tags(strtolower($str)), 0);//only keep a-z and 0-9 and then strip tagd
   	$str = preg_replace('/[.“”’]/', '', $str); //removes '.','"','’' so lab3.pdf is one w#ord
    $str = preg_replace('/https([\S]+)/', '', $str); //remove words that begin with https (for links)
    $str = preg_replace('/http([\S]+)/', '', $str);  //remove words that begin with http (for links)
    print_r(str_word_count($str, 0, '0..9'));//words with numbers arent split
?>
