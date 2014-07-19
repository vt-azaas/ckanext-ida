'''plugin.py

'''
import ckan.plugins as plugins
import ckan.plugins.toolkit as toolkit

class CustomSearchPlugin(plugins.SingletonPlugin):
	#Declare that this class implements IConfigurer.
	plugins.implements(plugins.IConfigurer)
	
	def update_config(self, config):
		#Add this plugin's templates dir to CKAN's extra_template_paths,
		#so that CKAN will use this plugin's custom templates.
		toolkit.add_template_directory(config, 'templates')

                toolkit.add_resource('fanstatic', 'custom_search')
