
module.exports = (cds) => {
    cds.on('hello', (req,res) => {
        return 'Welcome ' + req.data.name + ' to my world of CAPM services';
    });
}