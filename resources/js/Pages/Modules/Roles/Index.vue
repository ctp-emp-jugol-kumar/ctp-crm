<template>
    <div class="app-content content ">
        <div class="content-overlay"></div>
        <div class="header-navbar-shadow"></div>
        <div class="content-wrapper container-xxl p-0">
        <div class="content-header row">
        </div>
        <div class="content-body">
            <h3>Roles List</h3>

            <!-- Role cards -->
            <div class="row">
                <div class="col-xl-4 col-lg-6 col-md-6" v-for="role in roles" :key="role.id">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex justify-content-between">
                                <span>Total {{ role.users_count }} users</span>
                                <ul class="list-unstyled d-flex align-items-center avatar-group mb-0">

                                    <li data-bs-toggle="tooltip"
                                        data-popup="tooltip-custom"
                                        data-bs-placement="top"
                                        title="Vinnie Mostowy"
                                        class="avatar avatar-sm pull-up"
                                        v-for="user in role.users"
                                    >
                                        <img class="rounded-circle" :src="user.photo" alt="Avatar" />
                                    </li>

                                </ul>
                            </div>
                            <div class="d-flex justify-content-between align-items-end mt-1 pt-25">
                                <div class="role-heading">
                                    <h4 class="fw-bolder">{{ role.name  }}</h4>
                                    <a href="javascript:;" class="role-edit-modal" data-bs-toggle="modal" data-bs-target="#addRoleModal">
                                        <small class="fw-bolder">Edit Role</small>
                                    </a>
                                </div>
                                <a href="javascript:void(0);" class="text-body"><i data-feather="copy" class="font-medium-5"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-xl-4 col-lg-6 col-md-6">
                    <div class="card">
                        <div class="row">
                            <div class="col-sm-5">
                                <div class="d-flex align-items-end justify-content-center h-100">
                                    <img src="../../../app-assets/images/illustration/faq-illustrations.svg" class="img-fluid mt-2" alt="Image" width="85" />
                                </div>
                            </div>
                            <div class="col-sm-7">
                                <div class="card-body text-sm-end text-center ps-sm-0">
                                    <a href="javascript:void(0)" data-bs-target="#addRoleModal" data-bs-toggle="modal" class="stretched-link text-nowrap add-new-role">
                                        <span class="btn btn-primary mb-1">Add New Role</span>
                                    </a>
                                    <p class="mb-0">Add role, if it does not exist</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--/ Role cards -->

            <h3 class="mt-50">Module Wise All permissions</h3>

            <!-- table -->
            <div class="card">
                <div class="table-responsive">
                    <table class="user-list-table table">
                        <thead class="table-light">
                            <tr>
                                <th></th>
                                <th></th>
                                <th>Name</th>
                                <th>Roles</th>
                                <th>Users</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr v-for="permission in all_permissions" :key="permission.id">
                                <td></td>
                                <td></td>
                                <td>{{ permission.name }}</td>
                                <td>
                                    <span class="badge bg-primary me-1" v-for="role in permission.roles">
                                        {{ role.name }}
                                    </span>
                                </td>
                                <td>
                                    <ul class="list-unstyled d-flex align-items-center avatar-group mb-0">
                                        <li data-bs-toggle="tooltip"
                                            data-popup="tooltip-custom"
                                            data-bs-placement="top"
                                            title="Vinnie Mostowy"
                                            class="avatar avatar-sm pull-up"
                                            v-for="user in permission.users"
                                        >
                                            <img class="rounded-circle" :src="user.photo" alt="Avatar" />
                                        </li>

                                    </ul>
                                </td>
                            </tr>

                        </tbody>
                    </table>
                </div>
            </div>
            <!-- table -->

            <!-- Add Role Modal -->
            <div class="modal fade" id="addRoleModal" tabindex="-1" aria-hidden="true">
                <div class="modal-dialog modal-lg modal-dialog-centered modal-add-new-role">
                    <div class="modal-content">
                        <div class="modal-header bg-transparent">
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body px-5 pb-5">
                            <div class="text-center mb-4">
                                <h1 class="role-title">Add New Role</h1>
                                <p>Set role permissions</p>
                            </div>
                            <!-- Add role form -->
                            <form id="addRoleForm" class="row" onsubmit="return false">
                                <div class="col-12">
                                    <label class="form-label" for="modalRoleName">Role Name</label>
                                    <input type="text" id="modalRoleName" name="modalRoleName" class="form-control" placeholder="Enter role name" tabindex="-1" data-msg="Please enter role name" />
                                </div>
                                <div class="col-12">
                                    <h4 class="mt-2 pt-50">Role Permissions</h4>
                                    <!-- Permission table -->
                                    <div class="table-responsive">
                                        <table class="table table-flush-spacing">
                                            <tbody>
                                                <tr v-for="(module, index) in permissions" :key="module.id">
                                                    <td class="text-nowrap fw-bolder">
                                                        {{  index }}
                                                        <span data-bs-toggle="tooltip" data-bs-placement="top" title="Allows a full access to the system">
                                                                    <i data-feather="info"></i>
                                                                </span>
                                                    </td>
                                                    <td>
                                                        <div class="">
                                                            <div class="form-check me-3 me-lg-5" v-for="(permission, index) in module">
                                                                <input class="form-check-input" type="checkbox" id="userManagementRead">
                                                                <label class="form-check-label" for="userManagementRead"> {{ permission.name }} </label>
                                                            </div>
                                                        </div>
                                                    </td>

                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <!-- Permission table -->
                                </div>
                                <div class="col-12 text-center mt-2">
                                    <button type="submit" class="btn btn-primary me-1">Submit</button>
                                    <button type="reset" class="btn btn-outline-secondary" data-bs-dismiss="modal" aria-label="Close">
                                        Discard
                                    </button>
                                </div>
                            </form>
                            <!--/ Add role form -->
                        </div>
                    </div>
                </div>
            </div>
            <!--/ Add Role Modal -->

        </div>
    </div>
    </div>

</template>

<script setup>
    let props = defineProps({
        permissions:Object,
        all_permissions:Object,
        roles: Object,
    });
</script>

<style scoped>

</style>
