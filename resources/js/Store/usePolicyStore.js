import {defineStore} from "pinia";


export const usePolicyStore = defineStore('policyStore', {
    state:()=>({
        paymentPolicy: '** 60% advance payment with work order.' +
            '\n** 20% due payment within 3 days after delivery.' +
            '\n** 20% due payment within 3 days after final delivery.'+
            '\n** All payments will go to the “Creative Tech Park” account via account pay cheque or bank deposit or online transfer or merchant mobile banking account paid by client.'
        ,

        servicePolicy: '** Client must be provided all information/ content/ images with work order before starting the project.' +
            '\n** Creative Tech Park is not liable for any illegal/ copyrighted content uploaded to the website.' +
            '\n** If the Client failed to provide the content within 30 days after the contract, the project will count as a complete project.'+
            '\n** If the Client failed to provide revisions within 15 days after the Delivery Timeline, the project will consider as a fully delivered.'+
            '\n** Free 2 month small updating. (basic updating without any design work)'
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
