class Dashing.Crossqc extends Dashing.Widget
	states = new Object();
	ready: ->
		classname = $(@node).attr('class').replace("widget widget-crossqc ", "");
		currentStatus = eval("localStorage[classname]")
		
		if currentStatus == "green"
			$(@node).css( "background-image", "url('/assets/ok.png')");
			$(@node).css( "background-color", "#5CBF11");
		if currentStatus == "yellow"
			$(@node).css( "background-image", "url('/assets/cross.png')");
			$(@node).css( "background-color", "#F20505");
		if currentStatus == "red"
			$(@node).css( "background-image", "url('/assets/question.png')");				
			$(@node).css( "background-color", "#0515F2");
		if currentStatus == "empty" || currentStatus == "null"
			$(@node).css( "background-image", "url('/assets/question.png')");
			$(@node).css( "background-color", "#8D8A8A");
			
	onData: (data) ->
		eval("localStorage[data.id] = data.status")
		$(@node).fadeOut().fadeIn()
		
		if data.status
			if data.status == "green"
					$(@node).css( "background-image", "url('/assets/ok.png')");
					$(@node).css( "background-color", "#5CBF11");
			if data.status == "yellow"
					$(@node).css( "background-image", "url('/assets/cross.png')");
					$(@node).css( "background-color", "#F20505");
			if data.status == "red"
					$(@node).css( "background-image", "url('/assets/question.png')");				
					$(@node).css( "background-color", "#0515F2");
			if data.status == "empty"
					$(@node).css( "background-image", "url('/assets/question.png')");
					$(@node).css( "background-color", "#8D8A8A");
	
