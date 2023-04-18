import {defineStore} from "pinia";
import moment from "moment";


export const useQuotationStore = defineStore('quotation', {
    state:()=>({
        quotationId:moment(new Date()).format('YYYYMMD'),
        clientId:null,
        date:null,
        subject:null,
    }),


    actions:{
        setClientId(clientId){
            this.clientId = clientId;
        },
        setQutDate(date){
            this.date = date;
        },
        setSubject(subject){
            this.subject = subject;
        }
    },

    getters:{
        getQuotId(){
            return this.quotationId;
        },
        getClientId(){
            return this.clientId;
        },
        getQutDate(){
            return this.date;
        },
        getSubject(){
            return this.subject;
        }

    }

})
