<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>A</title>
	<link rel="stylesheet" type="text/css" href="/static/styles.css">
</head>
<body>
	%include("haus.tpl")

	<%
	import json
	with open("gengi.json", "r", encoding="utf-8") as skra:
		gengi = json.load(skra)
	%>
	
	<div class="row">
		<section>
			<h2>gengi gjaldmiðla í ISKR.</h2>
			<ul>
				% for x in gengi['results']:
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