<template>
    <Head title="Todo Index"/>
    <div class="app-content content ">
        <div class="content-overlay"></div>
        <div class="header-navbar-shadow"></div>
        <div class="content-wrapper container-xxl p-0">
            <div class="content-body">
                <div class="row match-height ">
                    <div class="col-md-3 me-0 pe-0">
                        <Sidebar :users="props.users" :main_url="props.main_url"/>
                    </div>
                    <div class="col-md-9 ms-0 ps-0  bg-white" id="mainSection">
                        <div  class="card h-100 shadow-none mb-0 pb-0 rounded-0">
                            <div class="card-header rounded-0">
                                <input type="text" class="form-control border-0" placeholder="Find Your Todo here">
                            </div>
                            <div class="card-body chat-bg p-0 min-chat-height">
                                <ul id="chat">
                                    <li class="d-flex align-items-center justify-content-between todo-item-style p-1"
                                        v-for="todo in props.todos.data">
                                        <div class="d-flex align-items-center">
                                            <vue-feather type="more-vertical"  size="18"/>
                                            <input type="checkbox" @click="taskComplate(todo.id)" :checked="todo?.priority === 'Complete'" class="form-check-input">
                                            <div class="ms-1 todo-content cursor-pointer" @click="showItem(todo.id)">
                                                <h4 class="m-0 text-black" >
                                                    {{ todo?.title.slice(0, 100) }}
                                                </h4>
                                                <small @click="showItem(todo.id)">
                                                    <span style="margin-left:5px;">{{ todo.about_todo?.slice(0, 100) }}</span>
                                                      <span v-if="todo.file">
                                                        |
                                                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" style="width: 15px;">
                                                            <path stroke-linecap="round" stroke-linejoin="round" d="M2.25 15.75l5.159-5.159a2.25 2.25 0 013.182 0l5.159 5.159m-1.5-1.5l1.409-1.409a2.25 2.25 0 013.182 0l2.909 2.909m-18 3.75h16.5a1.5 1.5 0 001.5-1.5V6a1.5 1.5 0 00-1.5-1.5H3.75A1.5 1.5 0 002.25 6v12a1.5 1.5 0 001.5 1.5zm10.5-11.25h.008v.008h-.008V8.25zm.375 0a.375.375 0 11-.75 0 .375.375 0 01.75 0z" />
                                                        </svg>
                                                    </span>
                                                    <span style="margin-left:5px;">{{ todo.file }}</span>
                                                </small>
                                            </div>
                                        </div>
                                        <div class="d-flex align-items-center" style="gap:5px">
                                            <span class="badge"
                                                :class="{
                                                    'badge-light-success' : todo.priority === 'Complete',
                                                    'badge-light-primary' : todo.priority === 'Normal',
                                                    'badge-light-info' : todo.priority === 'Contacted',
                                                    'badge-light-warning' : todo.priority === 'Medium',
                                                    'badge-light-purple' : todo.priority === 'Low',
                                                    'badge-light-danger' : todo.priority === 'High',
                                                    'badge-light-indego' : todo.priority === 'New Lead',
                                                    'badge-light-indego' : todo.priority === 'First',
                                                }"
                                                >{{ todo.priority }}</span>
                                                <small class="badge text-black">{{ moment(todo.date).format('MMMM, D') }}</small>
                                            <span class="avatar me-1" v-c-tooltip="todo.user?.name">
                                                <img :src="todo.user.photo" height="32" width="32" alt="Generic placeholder image">
                                            </span>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <div class="modal modal-slide-in fade" id="showTodoModal" aria-hidden="true" v-vb-is:modal>
        <div class="modal-dialog sidebar-lg">
            <div class="modal-content p-0">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">×</button>
                <div class="modal-header mb-1">
                    <h5 class="modal-title">
                        <span class="align-middle">Show Todo</span>
                    </h5>
                </div>
                <div class="modal-body flex-grow-1">
                    <div class="d-flex flex-column mb-2">
                        <h1>{{ showTodoData.title }}</h1>
                        <small>{{ showTodoData.about_todo }}</small>
                        <span class="text-primary mt-1">{{ moment(showTodoData.date).format('MMMM, DD') }}</span>
                    </div>


                    <a v-if="showTodoData.downloadUrl" :href="showTodoData.downloadUrl" target="_blank" v-c-tooltip="'View Or Download This File.'">
                        <img :src="showTodoData.downloadUrl" alt="" class="mb-1" style="max-width: 100%;">
                        {{ $page.props.auth.ADMIN_URL+''+showTodoData.downloadUrl }}
                    </a>
<!--                    <iframe :src="showTodoData.downloadUrl" scrolling="no" style="overflow:hidden"></iframe>-->
                </div>
            </div>
        </div>
    </div>


</template>
<script>
import Modal from "../../components/Modal";

</script>
<script setup>

import {useAction} from "../../composables/useAction.js";
import {ref, computed} from "vue";
import {useForm, usePage} from "@inertiajs/inertia-vue3";
import {CDropdown,CDropdownToggle, CDropdownMenu, CDropdownItem} from '@coreui/vue'
import {Inertia} from "@inertiajs/inertia";
import axios from "axios";
import moment from "moment";
import Swal from "sweetalert2";
import Sidebar from './Sidebar.vue'


const {deleteItem} = useAction();


const props = defineProps({
    users:Array|[],
    todos:Array|[],
    main_url:null,
    errors:Object,
})


const showTodoData = ref({});
const showItem = (id)=>{
    axios.get(props.main_url+'/'+id+'?show_data=true').then((res) =>{
        showTodoData.value = res.data;
        document.getElementById('showTodoModal').$vb.modal.show()
    }).catch((err)=>{
        console.log(err)
    })
}





const taskComplate = (event) =>{
    Inertia.get(props.main_url+"/"+event+"?complete=true", {},{
        onSuccess:()=>{
            Swal.fire(
                'Saved!',
                'Todo Completed....',
                'success'
            )
        }
    })
}

</script>

<style lang="css" scoped>
    .todo-content h4{
        font-size:14px;
    }
    .todo-content small{
        font-size:10px;
        color:#b1b1b1;
    }
    .todo-content{
        max-width: 70%;
        /*text-align: justify;*/
    }
</style>
