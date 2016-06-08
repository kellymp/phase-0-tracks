**What are some common HTTP status codes?**
	*200 Ok - request succeeded
	*202 Accepted - request has been accepted for processing but processing is not complete
	*400 Bad Request - the server could not understand the request due to bad syntax
	*403 Forbidden - the request was valid but denied becuase the user doesnt have authorization
	*404 Not Found - the server cannot find anything that matches the request 
	*408 Request Timeout - a request was supplied within a reasonable amount of time
	*500 Internal Server Error - the server encountered an unexpected problem that prevented the request from being fulfilled
	*502 Bad Gateway - the server recieved an invalid response from the upstream server it was attempting to access

**What is the difference between a GET request and a POST request? When might each be used?**

	* **GET** request- requests data from a specified resource. They should be used only to retrieve data and should never be used when dealing with sensitive data. They remain in the browser history and can be bookmarked.

	* **POST** request- submits data to be processed to a specified resource and is used for sensitive data. They do not remain in the browser history and cannot be bookmarked.

**BONUS: What is a cookie? How does it relate to HTTP requests?**

