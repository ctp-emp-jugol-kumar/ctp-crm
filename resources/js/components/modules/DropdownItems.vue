<template>
    <div class="dd">
        <div class="dd-a"><span>Dropdown menu</span></div>
        <input type="checkbox">
        <div class="dd-c">
            <ul>
                <li><a href="#"><span>Link</span></a></li>
                <li><a href="#"><span>Link</span></a></li>
                <li><a href="#"><span>Link</span></a></li>
            </ul>
        </div>
    </div>
</template>

<script setup>
    const props = defineProps({
       directions:{
           type:String,
           default:'dropstart'
       },
        icon:{
            type:String,
            default:'more-vertical'
        }
    });

</script>

<style scoped>
.dd {
    z-index:1;
    position:relative;
    display: inline-block;
}
.dd-a {
    padding:10px;
    background:white;
    position:relative;
    -webkit-box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.75);
    -moz-box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.75);
    box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.75);
    transition-duration: 0.2s;
    -webkit-transition-duration: 0.2s;
}
.dd input:after {
    content:"";
    width:100%;
    height:2px;
    position:absolute;
    display:block;
    background:#C63D0F;
    bottom:0;
    left:0;
    transform: scaleX(0);
    transform-origin: bottom left;
    transition-duration: 0.2s;
    -webkit-transform: scaleX(0);
    -webkit-transform-origin: bottom left;
    -webkit-transition-duration: 0.2s;
}
.dd input {
    top:0;
    opacity:0;
    display:block;
    padding:0;
    margin:0;
    border:0;
    position:absolute;
    height:100%;
    width:100%;
}
.dd input:hover {
    cursor:pointer;
}
.dd input:hover ~ .dd-a {
    -webkit-box-shadow: 0px 0px 15px 0px rgba(0,0,0,0.75);
    -moz-box-shadow: 0px 0px 15px 0px rgba(0,0,0,0.75);
    box-shadow: 0px 0px 15px 0px rgba(0,0,0,0.75);
}
.dd input:checked:after {
    transform: scaleX(1);
    -webkit-transform: scaleX(1);
}
.dd input:checked ~ .dd-c {
    transform: scaleY(1);
    -webkit-transform: scaleY(1);
}
.dd-a span {
    color:#C63D0F;
}
.dd-c{
    display:block;
    position: absolute;
    background:white;
    height:auto;
    transform: scaleY(0);
    transform-origin: top left;
    transition-duration: 0.2s;
    -webkit-transform: scaleY(0);
    -webkit-transform-origin: top left;
    -webkit-transition-duration: 0.2s;
}
.dd-c ul {
    margin:0;
    padding:0;
    list-style-type: none;
}
.dd-c li {
    margin-botom:5px;
    word-break: keep-all;
    white-space:nowrap;
    display:block;
    position:relative;
}
a {
    display:block;
    position:relative;
    text-decoration: none;
    padding:5px;
    background:white;
    color:#C63D0F;
}
a:before {
    z-index:0;
    content:"";
    position:absolute;
    display:block;
    height:100%;
    width:100%;
    -webkit-transition-duration: 0.2s;
    transition-duration: 0.2s;
    transform-origin:top left;
    -webkit-transform-origin:top left;
    background:#C63D0F;
    top:0;
    left:0;
    transform: scaleX(0);
    -webkit-transform: scaleX(0);
}
a span {
    display:block;
    position:relative;
    -webkit-transition-duration: 0.2s;
    transition-duration: 0.2s;
}
a:hover:before {
    transform:scaleX(1);
    -webkit-transform:scaleX(1);
}
a:hover span {
    color:white;
}
</style>
