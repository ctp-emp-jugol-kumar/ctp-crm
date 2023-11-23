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


export function useJson(){

    const status = [
        'New Project',
        'Development',
        'In Process',
        'Testing',
        'Revision',
        'Complete',
        'Canceled'
    ]

    const color = (progress) =>{
        let color = null;
        if (progress < 10){
            color = "#ac66fc";
        }else if(progress < 20){
            color = "#7d66fc"
        }else if(progress < 30){
            color = "#66d2fc"
        }else if(progress < 40){
            color = "#66fcc8"
        }else if(progress < 50){
            color = "#66fc68"
        }else if(progress < 60){
            color = "#e1fc66"
        }else if(progress < 70){
            color = "#fcdc66"
        }else if(progress < 80){
            color = "#fca266"
        }else if(progress < 90){
            color = "#fc7c66"
        }else if(progress < 100){
            color = "#66fc87"
        }else{
            color = "#fc6684"
        }
        return color;
    }

    const priority = [
        {name: "High"},
        {name: "Low"},
        {name: "Medium"},
        {name: "In Process"},
        {name: "Complete"},
    ];

    const clientCurrentStatus = [
        {"name":'New Lead'},
        {"name":'Contacted'},
        {"name":'Proposal Sent'},
        {"name":'Quote Sent'},
        {"name":'Qualified'},
        {"name":'Disqualified'},
        {"name":'Converted to Customer'}
    ]

    return {status, color, priority, clientCurrentStatus}


}
