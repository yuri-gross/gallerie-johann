#!/usr/bin/ruby

v_anf = %q(<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Johann Baerenklau</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <meta name="copyright" content="">
        <meta name="email" content="">
        <meta name="robots" content="index,follow">
        <meta name="audience" content="all">
        <meta name="allow-search" content="YES">
        <meta name="revisit-after" content="7 day">
        <meta name="language" content="de,at,ch">
        <meta name="Identifier-URL" content="">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta http-equiv="Language" content="de">

		<link href="assets/css/bootstrap.css" rel="stylesheet">
        <link href="assets/css/bootstrap-responsive.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/font-awesome.css">
		<link rel="stylesheet" href="assets/css/flaticon.css">
        <link href="style.css" rel="stylesheet" type="text/css" />
		<link href="root.css" rel="stylesheet" type="text/css" />
        <link href='https://fonts.googleapis.com/css?family=Righteous' rel='stylesheet' type='text/css'>
		<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
		
		
</head>

<body>
)





body = "<div> Test-Body </div>"

v_end = "</body></html>"


fertiges_html = v_anf + body + v_end

File.open("gallery.html", "w") {|file| file.puts fertiges_html }
