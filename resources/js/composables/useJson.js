var result1 = [
    {id:1, name:'Sandra', type:'user', username:'sandra'},
    {id:2, name:'John', type:'admin', username:'johnny2'},
    {id:3, name:'Peter', type:'user', username:'pete'},
    {id:4, name:'Bobby', type:'user', username:'be_bob'}
];

var result2 = [
    {id:2, name:'John', email:'johnny@example.com'},
    {id:4, name:'Bobby', email:'bobby@example.com'}
];

var props = ['id', 'name'];
var result = result1.filter(function(o1){
    return !result2.some(function(o2){
        return o1.id === o2.id;
    });
}).map(function(o){
    return props.reduce(function(newo, name){
        newo[name] = o[name];
        return newo;
    }, {});
});
