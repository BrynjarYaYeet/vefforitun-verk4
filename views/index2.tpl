<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>B</title>
	<link rel="stylesheet" type="text/css" href="/static/styles.css">
</head>
<body>
	%include("haus.tpl")
	
	<div class="row">
		<section>
			<h2>gengi gjaldmiðla frá apis.is</h2>
			<ul>
				% for x in data['results']:
					<li> 
						{{x['longName']}} - {{x['shortName']}} ISKR:{{x['value']}}
					</li>
				
				% end

			</ul>

		</section>
	
	</div>
	%include("fotur.tpl")
</body>
</html>