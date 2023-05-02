<template>
    <div class="app-content content ">
        <div class="content-overlay"></div>
        <div class="header-navbar-shadow"></div>
        <div class="content-wrapper container-xxl p-0">
            <div class="content-body">
                <section id="advanced-search-datatable">
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header border-bottom d-flex justify-content-between">
                                    <h4 class="card-title">Services Information's </h4>
                                    <button class="dt-button add-new btn btn-primary"
                                            @click="addServiceModal">
                                        Add Service
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <div class="row match-height">
                    <div class="col-md-3 me-0 pe-0">
                        <div class="card h-100 mb-0 shadow-none rounded-0">
                                <div class="card-header border-bottom border-end rounded-0">
                                    <div class="chat-fixed-search">
                                        <div class="d-flex align-items-center w-100">
                                            <div class="sidebar-profile-toggle">
                                                <div class="avatar avatar-border">
                                                    <img src="" alt="user_avatar" height="42" width="42">
                                                    <span class="avatar-status-online"></span>
                                                </div>
                                            </div>
                                            <div class="input-group input-group-merge ms-1 w-100">
                                                <span class="input-group-text round"><svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-search text-muted"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg></span>
                                                <input type="text"
                                                       class="form-control round"
                                                       id="chat-search"
                                                       placeholder="Search or start a new chat"
                                                       aria-label="Search..."
                                                       aria-describedby="chat-search">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body chat-height p-0">
                                    <h5 class="text-primary m-2">All Students</h5>
                                    <div class="sidebar-menu-list ps ">
                                        <div class="list-group list-group-filters border-top-0 border-bottom-0 border-end-0 border-start-5 border-primary">
                                            <a href="#" class="d-flex align-items-center list-group-item list-group-item-action ">
                                                <vue-feather type="mail" size="12"/>
                                                <span class="align-middle ms-1"> My Task</span>
                                            </a>
                                            <a href="#" class="list-group-item list-group-item-action">
                                                <vue-feather type="star" size="12"/>
                                                <span class="align-middle">Important</span>
                                            </a>
                                            <a href="#" class="list-group-item list-group-item-action">
                                                <vue-feather type="check-circle" size="12"/>
                                                <span class="align-middle">Completed</span>
                                            </a>
                                            <a href="#" class="list-group-item list-group-item-action">
                                                <vue-feather type="trash" size="12"/>
                                                <span class="align-middle">Deleted</span>
                                            </a>
                                        </div>
                                        <div class="mt-3 px-2 d-flex justify-content-between">
                                            <h6 class="section-label mb-1">Tags</h6>
                                            <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-plus cursor-pointer"><line x1="12" y1="5" x2="12" y2="19"></line><line x1="5" y1="12" x2="19" y2="12"></line></svg>
                                        </div>
                                        <div class="list-group list-group-labels">
                                            <a href="#" class="list-group-item list-group-item-action d-flex align-items-center">
                                                <span class="bullet bullet-sm bullet-primary me-1"></span>Team
                                            </a>
                                            <a href="#" class="list-group-item list-group-item-action d-flex align-items-center">
                                                <span class="bullet bullet-sm bullet-success me-1"></span>Low
                                            </a>
                                            <a href="#" class="list-group-item list-group-item-action d-flex align-items-center">
                                                <span class="bullet bullet-sm bullet-warning me-1"></span>Medium
                                            </a>
                                            <a href="#" class="list-group-item list-group-item-action d-flex align-items-center">
                                                <span class="bullet bullet-sm bullet-danger me-1"></span>High
                                            </a>
                                            <a href="#" class="list-group-item list-group-item-action d-flex align-items-center">
                                                <span class="bullet bullet-sm bullet-info me-1"></span>Update
                                            </a>
                                        </div>
                                        <div class="ps__rail-x" style="left: 0px; bottom: 0px;"><div class="ps__thumb-x" tabindex="0" style="left: 0px; width: 0px;"></div></div><div class="ps__rail-y" style="top: 0px; right: 0px;"><div class="ps__thumb-y" tabindex="0" style="top: 0px; height: 0px;"></div></div></div>
                                </div>
                            </div>
                    </div>
                    <div class="col-md-9 ms-0 ps-0" id="mainSection">
                        <div  class="card h-100 shadow-none mb-0 pb-0 rounded-0">
                                <div class="card-header rounded-0">
                                    <a href="javascript:void(0)">
                                        <li class="d-flex align-items-center">
                                            <span class="avatar me-1">
                                                <img src="" height="42" width="42" alt="Generic placeholder image">
                                                <span class="avatar-status-offline"></span>
                                            </span>
                                            <div class="chat-info flex-grow-1">
                                                <h5 class="mb-0">name of student</h5>
                                                <p class="card-text text-truncate">
                                                    Student
                                                </p>
                                            </div>
                                        </li>
                                    </a>
                                </div>
                                <div class="card-body chat-bg p-0">
                                    <ul id="chat">

                                    </ul>
                                </div>
                            </div>
                        <div class="card h-100 shadow-none mb-0 pb-0 rounded-0">
                                <div class="card-body d-flex align-items-center justify-content-center">
                                    <div class="d-flex align-items-center flex-column">
                                        <img src="" alt="" width="100">
                                        <h2>this is user name</h2>
                                        <p class="p-1 bg-light-primary rounded-5 font-bold">Seelct User And Start Conversations </p>
                                    </div>
                                </div>
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



</template>
<script>
import Modal from "../../components/Modal";

</script>
<script setup>

import {useAction} from "../../composables/useAction";
import {ref} from "vue";
import {useForm} from "@inertiajs/inertia-vue3";
import {CDropdown,CDropdownToggle, CDropdownMenu, CDropdownItem} from '@coreui/vue'
import {Inertia} from "@inertiajs/inertia";
import axios from "axios";

const {swalSuccess, deleteItem} = useAction()




</script>

<style lang="scss">

</style>
smart@@hr@@55
