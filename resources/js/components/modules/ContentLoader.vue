<template>

    <Head>
        <title>Home</title>
        <meta type="description" content="Home information" head-key="description">
    </Head>


    <!-- Dashboard Ecommerce Starts -->
    <div class="app-content content ">
        <div class="content-overlay"></div>
        <div class="header-navbar-shadow"></div>


    </div>
    <!-- Dashboard Ecommerce ends -->
</template>


<script setup>
import {ref} from "@vue/reactivity";

const props = defineProps({
    expanses:[]|null,
})





const isHow = ref(true);





</script>

<style scoped>
.wraper-lit-user{
    background-color: #242526;
    border-radius:8px;
    width: 100%;
    padding:32px 48px;
    height:fit-content;
}
.user{
    list-style: none;
    display: flex;
    align-items: self-start;
}
.user .user-data{
    display: flex;
    flex-direction: column;
    margin-left: 2rem;
}
.user .user-data .user-name{
    font-weight: bold;
    font-size: 20px;
    color: #d5ecff;
    text-transform: uppercase;
    margin-bottom: 10px;
}

/*    content placeholder */

.user-list-placeholder{
    list-style: none;
    margin: 0;
    padding: 0;
}
.user-placeholder{
    display: flex;
    margin-left: 2rem;
}
.user-placeholder .user-image-placeholder{
    width: 80px;
    height: 80px;
    background-color: black;
}
.user-placeholder .user-data-placeholder{
    margin-left: 2rem;
    display: flex;
    width: 100%;
    flex-direction: column;
}
.user-placeholder .user-data-placeholder .user-name-placeholder{
    background: black;
    border-radius: 5px;
    height: 36px;
    margin-bottom: 6px;
    width: 23%;
}

.user-placeholder .user-data-placeholder .user-desc-placeholder{
    width: 100%;
    height: 3rem;
    border-radius: 5px;
    background: black;
}

@keyframes loading {
    0%{
        opacity: 0.1;
    }
    100%{
        opacity: 1;
    }

}
.animation-empty{
    animation-name:loading;
    animation-timing-function: steps(10, end);
    animation-direction: alternate;
    animation-iteration-count: infinite;
    animation-duration: 1000ms;
}

</style>
