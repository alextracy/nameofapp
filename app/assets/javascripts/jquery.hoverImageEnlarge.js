 $(document).ready(function() { // please see the article "How jQuery works" below
            imageElement = $("#image1"); // get wrapper using id selector
            imageElement.attr("src", "small.png"); // initial state
            imageElement.hover( // accepts two handler functions:
                function() { // first one, called when mouse goes in
                    $(this).attr("src", "big.png");
                },
                function() { // second one, called when mouse goes out
                    $(this).attr("src", "small.png");
                }
            );
        });