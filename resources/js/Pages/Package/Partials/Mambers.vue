<template>
    <div class="row">
        <div class="col-xl-3 col-lg-6 col-12" v-for="(developer, index) in info.users" :key="developer.id">
            <div class="card mb-4">
                <!-- card body  -->
                <div class="card-body py-1 px-1">
                    <div class="d-flex align-items-center">
                        <div class="avatar avatar-lg">
                            <img :src="developer.photo" alt="" class="rounded-circle">
                        </div>
                        <div class="ms-2">
                            <h4 class="mb-0 fs-5 fw-bold">
                                <a href="#" class="text-black">{{ developer.name }}</a>
                            </h4>
                            <p class="mb-0 text-muted fs-6" v-for="role in developer.roles">{{ role.name }}</p>
                        </div>
                    </div>
                    <div class="mt-1 lh-1 d-flex align-items-center">
                        <a href="#" class="me-1 text-muted texttooltip" data-template="phone">
                            <vue-feather type="phone-call" size="15"/>
                        </a>
                        <a href="#" class="me-1 text-muted texttooltip" data-template="video">
                            <vue-feather type="video" size="15"/>
                        </a>
                        <CDropdown>
                            <CDropdownToggle>
                                <vue-feather type="more-horizontal" size="15"/>
                            </CDropdownToggle>
                            <CDropdownMenu>
                                <CDropdownItem >
                                    <vue-feather type="eye" size="15"/>
                                    <span class="ms-1">Show</span>
                                </CDropdownItem>
                                <CDropdownItem @click="removeUser(`${props.urls.remove_user}?project_id=${props.info.id}&user_id=${developer.id}`)">
                                    <vue-feather type="trash-2" size="15"/>
                                    <span class="ms-1">Remove</span>
                                </CDropdownItem>
                            </CDropdownMenu>
                        </CDropdown>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script setup>
    const props = defineProps({
        info:{
            type:Object,
            required:true,
        }
    })
</script>

<style scoped>


</style>
