diff --git a/ckanext/custom_search/plugin.py b/ckanext/custom_search/plugin.py
index cae64d0..3eeca1a 100644
--- a/ckanext/custom_search/plugin.py
+++ b/ckanext/custom_search/plugin.py
@@ -12,3 +12,5 @@ class CustomSearchPlugin(plugins.SingletonPlugin):
 		#Add this plugin's templates dir to CKAN's extra_template_paths,
 		#so that CKAN will use this plugin's custom templates.
 		toolkit.add_template_directory(config, 'templates')
+
+                toolkit.add_resource('fanstatic', 'custom_search')
diff --git a/ckanext/custom_search/templates/package/search.html b/ckanext/custom_search/templates/package/search.html
index 0e041ce..1cf95ef 100644
--- a/ckanext/custom_search/templates/package/search.html
+++ b/ckanext/custom_search/templates/package/search.html
@@ -8,8 +8,9 @@
 {% endblock %}
 
 {% block pre_primary %}
-       <iframe frameborder="0" style="width:100%; height:2000px" src="http://daas-dap.cloudapp.net/search" />
-
+   {% resource 'custom_search/custom_search_iframe.js' %}
+   <!--iframe id='iframe1' name='iframe1' frameborder="0" style="width:100%; height:1600px" src="http://daas-dap.cloudapp.net/search" data-module="custom_search_iframe" /-->
+   <div data-module="custom_search_iframe" name='iframeContainer' id='iframeContainer></div>
 {% endblock %}
 
 {% block primary_content %}
@@ -23,6 +24,8 @@
         {% endif %}
       {% endblock %}
     </div>
+    <div class="module-content" data-module="custom_search_iframe">
+    </div>
   </section>
 {% endblock %}
 
