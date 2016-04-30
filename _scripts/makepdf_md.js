var fs = require( 'fs' );
var path = require( 'path' );
var markdownpdf = require( 'markdown-pdf' );

// ------------------------
// Set markdown-pdf options
// ------------------------
var ops = {
  cssPath: '_assets/css/_pdf_style.css',
  remarkable: {
    xhtmlOut: true,
    linkify: true
  }
}

// -------------------------------
// Set base MD and PDF directories
// -------------------------------
var md_dir = "_guides";
var pdf_dir = "_assets/pdf"

// -------------------------------
// Loop through all the files in the directory
fs.readdir( md_dir, function( err, files ) {
  if( err ) {
    console.error( "Could not list the directory.", err );
    process.exit( 1 );
  } 

  files.forEach( function( file, index ) {
    // Make one pass and make the file complete
    var md_path = path.join( md_dir, file );
    var pdf_path = path.join( pdf_dir, file + '.pdf' );

    fs.stat( md_path, function( error, stat ) {
      if( error ) {
        console.error( "Error stating file.", error );
        return;
      }

      // Start PDF Process on the files
      if( stat.isFile() ) {
        console.log( "'%s' is a file.", md_path );

        // Read file into a string so we can manipulate it
        var fileContents = fs.readFileSync(md_path, 'utf8');

        // Strip Jekyll Front-Matter
        console.log( "Stripping Front-Matter...");
        var pattern_fm =
          /^---(.|\n)*?---\n/;

        var strip_md = fileContents.replace( pattern_fm, '' );
        console.log( "Front-Matter stripped." );

        // Strip unwanted HTML and Links
        console.log( "Stripping unwanted HTML and Links...");
        var pattern_html =
          /<\/?summary>|<\/?details\ ?o?p?e?n?>|> (#*) \[Top <i class=\"fa fa-arrow-circle-up fa-lg\"><\/i>\]\(#top-of-page\)/gi;

        var strip_md_html = strip_md.replace (pattern_html, '');
        console.log( "Unwanted HTML and Links stripped." );

        // Replace Liquid tags
        var pattern_liquid =
          /{{ site.baseurl }}/gi;

        var replace_liquid = strip_md_html.replace (pattern_liquid, 'http://wiki.shadowlinkit.com');
        console.log( "Liquid Tags replaced." );

        // Pass stripped string to markdown-pdf
        markdownpdf(ops).from.string(replace_liquid).to(pdf_path, function () {
          console.log("Created", pdf_path)
        } );
      }

      // If it's not a file
      else if( stat.isDirectory() )
        console.log( "'%s' is a directory.", md_path );
    } );
  } );
} );