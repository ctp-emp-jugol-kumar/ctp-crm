import {defineStore} from "pinia";


export const useActionStore = defineStore('useAction', {
    state:()=>({
        isShowSidebar:false,
    }),


    actions:{
        updateIsShowSidebar(value){
            this.isShowSidebar = value;
        }
    },

    getters:{
        getIsShowSidebar(){
            return this.isShowSidebar;
        }
    }



})
