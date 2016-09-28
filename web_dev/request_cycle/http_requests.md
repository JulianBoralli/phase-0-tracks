#What are some common HTTP status codes?

Basically four classes of status codes, where the first number differentiates what type of class the response is, they are:

1xx Informational - Request received, continuing process

2xx Success - This class of status codes indicates the action requested by the client was received, understood, accepted, and processed successfully.

3xx Redirection - This class of status code indicates the client must take additional action to complete the request.

4xx Client Error - The 4xx class of status code is intended for situations in which the client seems to have erred.

5xx Server Error - The server failed to fulfill an apparently valid request.

Some of the most common status codes are:

200 OK - Standar response for successful request.

404 Not Found - The requested resource could not be found.

403 Forbidden - The request was a valid request, but the server is refusing to respond to it.

301 Moved Permanently - This and all future requests should be directed to the given URI.


#What is the difference between a GET request and a POST request? When might each be used?


GET resquests are used to request data from a specified resource, and POST requests are used to submit data to be processed to a specified resource. To render a webpage, GET should be used. When submitting sensitive data in a form, POST should be used.

#Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

It is a small piece of data sent from a website and stored in the user's web browser. It is used to remember user information or behavior.

Recently, two other alternatives are available to store data in the browser: session storage and local storage.

Cookies can be set on server's HTTP responses to the client. And will appear on the client's HTTP request.