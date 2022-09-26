<template>
    <div class="app-content content ">
        <div class="content-overlay"></div>
        <div class="header-navbar-shadow"></div>
        <div class="content-wrapper container-xxl p-0">
        <div class="content-header row">
        </div>

<!--             horizontal role create module-->

        </div>
    </div>

</template>

<script setup>
    import {useForm} from "@inertiajs/inertia-vue3";
    import Swal from "sweetalert2";
    import Modal from '../../../components/Modal'

    let props = defineProps({
        permissions:Object,
        all_permissions:Object,
        roles: Object,
        create_url:String,
        errors:Object
    });

    let createRole = useForm({
        roleName: "",
        selectedPermissions: [],
    });

    let checkAllPermission = (e) =>{
        createRole.selectedPermissions = [];
        if(e.target.checked){
            for(let item in props.all_permissions){
                createRole.selectedPermissions.push(props.all_permissions[item].name);
            }
        }
    }

    let selectGroup = (groupName, event) =>{
        if(event.target.checked){
            for(let item in props.permissions[groupName]){
                createRole.selectedPermissions.push(props.permissions[groupName][item].name);
            }
        }else{
            for(let item in props.permissions[groupName]){
                createRole.selectedPermissions = createRole.selectedPermissions.filter( a => a !== props.permissions[groupName][item].name);
            }
        }

        if(props.all_permissions.length === createRole.selectedPermissions.length){
            document.getElementById("checkAll").checked = true;
        }else{
            document.getElementById("checkAll").checked = false;
        }
    }

    let lastItemCheck = (event) =>{
        if(props.all_permissions.length === createRole.selectedPermissions.length){
            document.getElementById("checkAll").checked = true;
            // console.log(event.target.value)
            let availableGroupVlaue = createRole.selectedPermissions.filter(a => a === event.target.value);

        }else{
            document.getElementById("checkAll").checked = false;
            console.log(event.target.value)
        }
    }

    let createNewRole = () =>{
        createRole.post(props.create_url, {
            onSuccess: (res) =>{
                document.getElementById('addRoleModal').$vb.modal.hide()
                createRole.reset()
                Swal.fire(
                    'Saved!',
                    'Role has been Created....',
                    'success'
                )
            },
            onError: (err) =>{
                console.log(err)
            }
        });
    }




</script>

<style scoped>

</style>
