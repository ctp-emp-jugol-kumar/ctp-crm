import {defineStore} from "pinia";


export const usePolicyStore = defineStore('policyStore', {
    state:()=>({
        paymentPolicy: '** this is my payment policy' +
            '\n** first payment 60 after starting work ' +
            '\n** second time full payment',

        servicePolicy: '** this is my Service Policy' +
            '\n** first payment 60 after starting work ' +
            '\n** second time full payment'
    }),




    getters:{
        getPaymentPolicy(){
            return this.paymentPolicy
        },
        getServicePolicy(){
            return this.servicePolicy
        }
    }




})
