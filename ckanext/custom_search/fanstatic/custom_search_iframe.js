"use strict";

function getParameterByName(name) {
    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(location.search);
    return results == null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
}



ckan.module('custom_search_iframe', function ($, _) {
   return {
     initialize: function() {
       var q = getParameterByName("q");
       if (q == "")
           q = getParameterByName("tags");

       this.el.html("<iframe frameborder='0' src='http://daas-dap.cloudapp.net/search?q=" + q + "' style='height:1800px;width:100%' />");
     }
   };
});
