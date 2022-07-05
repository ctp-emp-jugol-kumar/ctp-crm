<template>
    <div class="main-menu menu-fixed menu-accordion menu-shadow"
    :class="[
      { 'expanded': !isVerticalMenuCollapsed || (isVerticalMenuCollapsed && isMouseHovered) },
      themeSkin === 'light'|| themeSkin === 'bordered' ? 'menu-light' : 'menu-dark'
    ]"
    @mouseenter="updateMouseHovered(true)"
    @mouseleave="updateMouseHovered(false)"
    >
        <div class="navbar-header expanded">
            <slot
                name="header"
                :toggleVerticalMenuActive="toggleVerticalMenuActive"
                :toggleCollapsed="toggleCollapsed"
                :collapseTogglerIcon="collapseTogglerIcon"
            >
                <ul class="nav navbar-nav flex-row">
                    <li class="nav-item me-auto"><Link preserve-scroll class="navbar-brand"
                            href="#">
                            <span class="brand-logo">
                            </span>
                            <h2 class="brand-text">CTP BD CRM</h2>
                        </Link></li>
                    <li class="nav-item nav-toggle">
                        <Link preserve-scroll class="nav-link modern-nav-toggle">
                            <vue-feather type="x" @click="toggleVerticalMenuActive" class="d-block d-xl-none" />
                            <vue-feather :type="collapseTogglerIconFeather" @click="toggleCollapsed" class="d-none d-xl-block collapse-toggle-icon" />
                        </Link>
                    </li>
                </ul>
            </slot>
        </div>
        <div class="shadow-bottom"></div>
        <perfect-scrollbar>
            <div class="main-menu-content scroll-area">
                <ul class="navigation navigation-main" id="main-menu-navigation" data-menu="menu-navigation">
                    <li class=" nav-item">
                        <Link preserve-scroll class="d-flex align-items-center" href="/admin/dashboard">
                            <vue-feather type="home" />
                            <span class="menu-title text-truncate" data-i18n="Dashboards">Dashboards</span>
                        </Link>
                    </li>

                    <li class=" nav-item">
                        <Link preserve-scroll class="d-flex align-items-center" href="app-email.html">
                            <vue-feather type="mail" />
                            <span class="menu-title text-truncate" data-i18n="Email">Email</span>
                        </Link>
                    </li>
                    <li class=" nav-item">
                        <Link preserve-scroll class="d-flex align-items-center" href="app-chat.html">
                            <vue-feather type="message-square" />
                            <span class="menu-title text-truncate" data-i18n="Chat">Chat</span>
                        </Link>
                    </li>

<!--
                    <li class=" nav-item has-sub" :class="{'open' : clickMenu === 1}"  @click="toggleSubMenu(1)">
                        <Link preserve-scroll class="d-flex align-items-center" href="#">
                            <vue-feather type="file-text" />
                            <span class="menu-title text-truncate" data-i18n="Invoice">Invoice</span>
                        </Link>
                        <ul class="menu-content">
                            <li>
                                <Link preserve-scroll class="d-flex align-items-center" href="app-invoice-list.html">
                                    <vue-feather type="circle" />
                                    <span class="menu-item text-truncate" data-i18n="List">List</span>
                                </Link>
                            </li>
                            <li>
                                <Link preserve-scroll class="d-flex align-items-center" href="app-invoice-preview.html">
                                    <vue-feather type="circle" />
                                    <span class="menu-item text-truncate" data-i18n="Preview">Preview</span>
                                </Link>
                            </li>
                            <li>
                                <Link preserve-scroll class="d-flex align-items-center" href="app-invoice-edit.html">
                                    <vue-feather type="circle" />
                                    <span class="menu-item text-truncate" data-i18n="Edit">Edit</span>
                                </Link>
                            </li>
                            <li>
                                <Link preserve-scroll class="d-flex align-items-center" href="app-invoice-add.html">
                                    <vue-feather type="circle" />
                                    <span class="menu-item text-truncate" data-i18n="Add">Add</span>
                                </Link>
                            </li>
                        </ul>
                    </li>
                    <li class=" nav-item has-sub" :class="{'open' : clickMenu === 2}"  @click="toggleSubMenu(2)">
                        <Link preserve-scroll class="d-flex align-items-center" href="#">
                            <vue-feather type="user-check" />
                            <span class="menu-title text-truncate" data-i18n="Authentication">Authentication</span>
                        </Link>
                        <ul class="menu-content">
                            <li>
                                <Link preserve-scroll class="d-flex align-items-center" href="#">
                                    <vue-feather type="circle" />
                                    <span class="menu-item text-truncate" data-i18n="Login">Admin</span>
                                </Link>
                            </li>
                            <li>
                                <Link preserve-scroll class="d-flex align-items-center" href="#">
                                    <vue-feather type="circle" />
                                    <span class="menu-item text-truncate" data-i18n="Login">Role</span>
                                </Link>
                            </li>
                            <li>
                                <Link preserve-scroll class="d-flex align-items-center" href="#">
                                    <vue-feather type="circle" />
                                    <span class="menu-item text-truncate" data-i18n="Login">Permission</span>
                                </Link>
                            </li>
                        </ul>
                    </li>


                    <li class=" nav-item has-sub" :class="{'open' : clickMenu === 3}"  @click="toggleSubMenu(3)">
                        <Link preserve-scroll class="d-flex align-items-center" href="#">
                            <vue-feather type="user-check" />
                            <span class="menu-title text-truncate" data-i18n="Authentication">Authentication</span>
                        </Link>
                        <ul class="menu-content">
                            <li>
                                <Link preserve-scroll class="d-flex align-items-center" href="/admin/users">
                                    <vue-feather type="circle" />
                                    <span class="menu-item text-truncate" data-i18n="Login">Admin</span>
                                </Link>
                            </li>
                            <li>
                                <Link preserve-scroll class="d-flex align-items-center" href="#">
                                    <vue-feather type="circle" />
                                    <span class="menu-item text-truncate" data-i18n="Login">Role</span>
                                </Link>
                            </li>
                            <li>
                                <Link preserve-scroll class="d-flex align-items-center" href="#">
                                    <vue-feather type="circle" />
                                    <span class="menu-item text-truncate" data-i18n="Login">Permission</span>
                                </Link>
                            </li>
                        </ul>
                    </li>

                    -->


                    <li class=" nav-item has-sub" :class="{'open' : clickMenu === 4}"  @click="toggleSubMenu(4)">
                        <Link preserve-scroll class="d-flex align-items-center" href="#">
                            <vue-feather type="users" />
                            <span class="menu-title text-truncate" data-i18n="Authentication">User Management</span>
                        </Link>
                        <ul class="menu-content">
                            <li>
                                <Link preserve-scroll class="d-flex align-items-center" href="/admin/users/create">
                                    <vue-feather type="circle" />
                                    <span class="menu-item text-truncate" data-i18n="Login">Create user</span>
                                </Link>
                            </li>
                            <li>
                                <Link preserve-scroll class="d-flex align-items-center" href="/admin/users">
                                    <vue-feather type="circle" />
                                    <span class="menu-item text-truncate" data-i18n="Login">Manage user</span>
                                </Link>
                            </li>
                        </ul>
                    </li>


                    <li class=" nav-item">
                        <Link preserve-scroll class="d-flex align-items-center" href="/admin/clients">
                            <vue-feather type="message-square" />
                            <span class="menu-title text-truncate" data-i18n="Chat">Clients</span>
                        </Link>
                    </li>

                    <li class=" nav-item">
                        <Link preserve-scroll class="d-flex align-items-center" href="/admin/designs" >
                            <vue-feather type="message-square" />
                            <span class="menu-title text-truncate" data-i18n="Chat">Package</span>
                        </Link>
                    </li>

                    <li class=" nav-item">
                        <Link preserve-scroll class="d-flex align-items-center" href="/admin/services">
                            <vue-feather type="message-square" />
                            <span class="menu-title text-truncate" data-i18n="Chat">Services</span>
                        </Link>
                    </li>

                    <li class=" nav-item">
                        <Link preserve-scroll class="d-flex align-items-center" href="/admin/platforms">
                            <vue-feather type="message-square" />
                            <span class="menu-title text-truncate" data-i18n="Chat">Platforms</span>
                        </Link>
                    </li>

                    <li class=" nav-item">
                        <Link preserve-scroll class="d-flex align-items-center" href="/admin/features">
                            <vue-feather type="message-square" />
                            <span class="menu-title text-truncate" data-i18n="Chat">Feature</span>
                        </Link>
                    </li>

                    <li class=" nav-item">
                        <Link preserve-scroll class="d-flex align-items-center" href="/admin/works">
                            <vue-feather type="message-square" />
                            <span class="menu-title text-truncate" data-i18n="Chat">Works</span>
                        </Link>
                    </li>

                    <li class=" nav-item">
                        <Link preserve-scroll class="d-flex align-items-center" href="/admin/domains">
                            <vue-feather type="message-square" />
                            <span class="menu-title text-truncate" data-i18n="Chat">Domains</span>
                        </Link>
                    </li>
                    <li class=" nav-item">
                        <Link preserve-scroll class="d-flex align-items-center" href="/admin/hostings">
                            <vue-feather type="message-square" />
                            <span class="menu-title text-truncate" data-i18n="Chat">Hostings</span>
                        </Link>
                    </li>

                    <li class=" nav-item">
                        <Link preserve-scroll class="d-flex align-items-center" href="/admin/quotations">
                            <vue-feather type="message-square" />
                            <span class="menu-title text-truncate" data-i18n="Chat">Quotations</span>
                        </Link>
                    </li>

                    <li class=" nav-item">
                        <Link preserve-scroll class="d-flex align-items-center" href="/admin/invoices">
                            <vue-feather type="message-square" />
                            <span class="menu-title text-truncate" data-i18n="Chat">Invoice</span>
                        </Link>
                    </li>

                    <li class=" nav-item">
                        <Link preserve-scroll class="d-flex align-items-center" href="/admin/methods">
                            <vue-feather type="message-square" />
                            <span class="menu-title text-truncate" data-i18n="Chat">Methods</span>
                        </Link>
                    </li>

                    <li class=" nav-item">
                        <Link preserve-scroll class="d-flex align-items-center" href="/admin/purposes">
                            <vue-feather type="message-square" />
                            <span class="menu-title text-truncate" data-i18n="Chat">Purposes</span>
                        </Link>
                    </li>
                </ul>
            </div>
        </perfect-scrollbar>
    </div>
</template>

<script setup>
import { PerfectScrollbar } from 'vue3-perfect-scrollbar'
import { ref, computed, onMounted } from 'vue'
import { useStore } from 'vuex'

const props = defineProps({
  isVerticalMenuActive: {
      type: Boolean,
      required: true,
    },
    toggleVerticalMenuActive: {
      type: Function,
      required: true,
    },
})
const isMouseHovered = ref(false)
const openClass = ref('')
const clickMenu = ref(0)
const store = useStore()

const themeSkin = computed(() => store.state.skin)
const isVerticalMenuCollapsed = computed(() => store.state.isVerticalMenuCollapsed)

const collapseTogglerIconFeather = computed(() => (collapseTogglerIcon.value === 'unpinned' ? 'circle' : 'disc'))

onMounted(() => store.commit('UDATE_SKIN', themeSkin.value))

const collapseTogglerIcon = computed(() => {
    if (props.isVerticalMenuActive) {
      return isVerticalMenuCollapsed.value ? 'unpinned' : 'pinned'
    }
    return 'close'
  })

  const toggleCollapsed = () => {
      store.commit('UPDATE_MENU_COLLAPSED', !isVerticalMenuCollapsed.value)
  }

  const toggleSubMenu = (val) => {
      openClass.value = openClass.value ? '' : 'open'
      clickMenu.value = clickMenu.value === val ? 0 : val
  }

  const updateMouseHovered = val => {
    isMouseHovered.value = val
  }
</script>

<style src="vue3-perfect-scrollbar/dist/vue3-perfect-scrollbar.css"/>
