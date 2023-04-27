<template>
    <div>
        <div class="container">

            <h4>Tiny</h4>
            <div class="btn-group btn-toggle">
                <button class="btn btn-xs btn-default ">ON</button>
                <button class="btn btn-xs btn-primary">OFF</button>
            </div>
            <hr>

        </div>
    </div>
</template>
<script setup>

    document.querySelector(".btn").addEventListner("click", function(){
        alert("ok")
    })

</script>
<script setup>

</script>
