<script type="text/javascript">
  var playerInstance = jwplayer("myElement");

  playerInstance.setup({
  playlist: [{
    file: 'http://feeds.soundcloud.com/stream/246769461-sleepycabin-sleepycast-s2e12-the-stinky-cheese-harmonies.mp3',
    // image: 'myposter.png',
    title: 'My Video',
    mediaid: '123456',
    width: 640,
    height: 40
  },
  {
    file: 'http://feeds.soundcloud.com/stream/241064044-sleepycabin-sleepycast-s2e8-court-night-terrors.mp3',
    // image: 'mysecondposter.png',
    title: 'My Second Video',
    mediaid: '234567'
    width: 640,
    height: 40
  }]
  });
</script>









// $(document).ready(function() {

//   // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
// });

// (function ( $ ) {
 
//     $.fn.rating = function( method, options ) {
//     method = method || 'create';
//         // This is the easiest way to have default options.
//         var settings = $.extend({
//             // These are the defaults.
//       limit: 5,
//       value: 0,
//       glyph: "glyphicon-star",
//             coloroff: "gray",
//       coloron: "gold",
//       size: "2.0em",
//       cursor: "default",
//       onClick: function () {},
//             endofarray: "idontmatter"
//         }, options );
//     var style = "";
//     style = style + "font-size:" + settings.size + "; ";
//     style = style + "color:" + settings.coloroff + "; ";
//     style = style + "cursor:" + settings.cursor + "; ";
  

    
//     if (method == 'create')
//     {
//       //this.html('');  //junk whatever was there
      
//       //initialize the data-rating property
//       this.each(function(){
//         attr = $(this).attr('data-rating');
//         if (attr === undefined || attr === false) { $(this).attr('data-rating',settings.value); }
//       })
      
//       //bolt in the glyphs
//       for (var i = 0; i < settings.limit; i++)
//       {
//         this.append('<span data-value="' + (i+1) + '" class="ratingicon glyphicon ' + settings.glyph + '" style="' + style + '" aria-hidden="true"></span>');
//       }
      
//       //paint
//       this.each(function() { paint($(this)); });

//     }
//     if (method == 'set')
//     {
//       this.attr('data-rating',options);
//       this.each(function() { paint($(this)); });
//     }
//     if (method == 'get')
//     {
//       return this.attr('data-rating');
//     }
//     //register the click events
//     this.find("span.ratingicon").click(function() {
//       rating = $(this).attr('data-value')
//       $(this).parent().attr('data-rating',rating);
//       paint($(this).parent());
//       settings.onClick.call( $(this).parent() );
//     })
//     function paint(div)
//     {
//       rating = parseInt(div.attr('data-rating'));
//       div.find("input").val(rating);  //if there is an input in the div lets set it's value
//       div.find("span.ratingicon").each(function(){  //now paint the stars
        
//         var rating = parseInt($(this).parent().attr('data-rating'));
//         var value = parseInt($(this).attr('data-value'));
//         if (value > rating) { $(this).css('color',settings.coloroff); }
//         else { $(this).css('color',settings.coloron); }
//       })
//     }

//     };
 
// }( jQuery ));