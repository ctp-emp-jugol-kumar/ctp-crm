<template>
    <nav
        class="header-navbar navbar navbar-expand-lg align-items-center floating-nav navbar-light navbar-shadow container-xxl">
        <div class="navbar-container d-flex content">
            <ul class="nav navbar-nav align-items-center ms-auto">
                <dark-toggle />
                <li class="nav-item dropdown dropdown-user">
                    <Link class="nav-link dropdown-toggle dropdown-user-link" id="dropdown-user" href="#dropdown-user"
                          data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <div class="user-nav d-sm-flex d-none">
                            <span class="user-name fw-bolder">{{ this.$page.props.auth.user.username }}</span>
                            <span class="user-status">{{ this.$page.props.auth.user.role }}</span>
                        </div>
                        <span class="avatar">
                            <img class="round" src="https://images.unsplash.com/photo-1633332755192-727a05c4013d" alt="avatar" height="40" width="40">
                            <span class="avatar-status-online"></span>
                        </span>
                    </Link>

<!--                    <Link href="admin/logout" method="post" class="dropdown-item w-100" as="button">-->
<!--                        <Icon title="power" width="24" height="24" /> Log Out-->
<!--                    </Link>-->
                    <div class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdown-user">
                        <Link href="/panel/profile" class="dropdown-item">
                            <Icon title="user" width="24" height="24" /> Profile
                        </Link>
                        <div class="dropdown-divider"></div>
                        <Link href="/panel/setting" class="dropdown-item">
                            <Icon title="settings" width="24" height="24" /> Settings
                        </Link>
                        <Link href="admin/logout" method="post" class="dropdown-item w-100" as="button">
                            <Icon title="power" width="24" height="24" /> Log Out
                        </Link>
                    </div>
                </li>
            </ul>
        </div>
    </nav>





    <ul class="main-search-list-defaultlist-other-list d-none">
        <li class="auto-suggestion justify-content-between"><a
                class="d-flex align-items-center justify-content-between w-100 py-50">
                <div class="d-flex justify-content-start"><span class="me-75"
                        data-feather="alert-circle"></span><span>No results found.</span></div>
            </a>
        </li>
    </ul>
</template>

<script setup>
    import Icon from '../components/Icon'
    import DarkToggle from "../components/DarkToggle";

    const props = defineProps({
      toggleVerticalMenuActive: {
          type: Function,
          required: true,
        },
    })
</script>
