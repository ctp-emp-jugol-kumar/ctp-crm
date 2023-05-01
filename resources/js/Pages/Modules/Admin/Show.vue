<template>

    <div class="app-content content ">
        <div class="content-overlay"></div>
        <div class="header-navbar-shadow"></div>
        <div class="content-wrapper container-xxl p-0">
            <div class="content-body">
                <section id="advanced-search-datatable">
                    <div class="row">
                        <div class="col-md-6 mx-auto">
                            <div class="card mb-4">
                                <!-- Card body -->
                                <div class="card-body">
                                    <div class="text-center">
                                        <img :src="props.user.photo ?? '/images/avatar.png'" height="150" class="rounded-circle avatar-xl mb-3" alt="">
                                        <h4 class="mb-0">{{ props.user?.name ?? '---'}}</h4>

                                        <span class="badge bg-light-info me-25 my-1" v-for="role in props.user.roles" v-text="role.name"></span>
                                        <p class="mb-0">{{ props.user?.email ?? '' }}</p>
                                        <p class="mb-0">{{ props.user?.phone ?? '' }}</p>
                                        <p class="mb-0">{{ props.user?.address }}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 mx-auto">
                            <div class="card mb-4">
                                <div class="card-body">
                                    <form @submit.prevent="updatePassword">
                                        <div class="mb-1">
                                            <label>Email</label>
                                            <input class="form-control" type="text" v-model="formData.email" placeholder="This Is My New Password">
                                        </div>

                                        <label>password</label>
                                        <div class="input-group input-group-merge form-password-toggle">

                                            <input :type="passwordFieldType" v-model="formData.password" class="form-control form-control-merge"
                                                   id="login-password" tabindex="2"
                                                   placeholder="******"
                                                   aria-describedby="login-password" />

                                            <span class="input-group-text">
                                                    <vue-feather class="cursor-pointer" :type="passwordToggleIcon"
                                                                 @click="togglePasswordVisibility" />
                                                </span>
                                        </div>
                                        <button type="submit" class="btn btn-sm btn-primary mt-1">Update Credintials</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>
</template>

<script setup>
    import VueLink from '../../../components/ViewLink'
    import UserProfile from "../../../components/UserProfile";
    import {useForm, usePage} from "@inertiajs/inertia-vue3";
    import {computed, ref} from "vue";
    let props = defineProps({
        user:[],
    })


    const formData = useForm({
        email:null,
        password:null,
    })

    const updatePassword =()=>{
        formData.post('/admin/user/update-pass/'+props.user.id,{
            preserveState:true,
            onSuccess:()=>$toast.success('Credentials Updated...')
        })
    }


    const passwordFieldType = ref('password')

    const togglePasswordVisibility = () => {
        passwordFieldType.value = passwordFieldType.value === "password" ? "text" : "password"
    }
    const passwordToggleIcon = computed(() =>{
        return passwordFieldType.value === 'password' ? 'eye' : 'eye-off'
    })
</script>
