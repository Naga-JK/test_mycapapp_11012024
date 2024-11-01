
// this is the defnition of the service
// the implimentation is written in a JS file with name equality
service MyService @(path: 'MyService') {
    function hello(name:String) returns String;
}