import moment from "moment";

export function useDate(date = null){
    let formatted = (date)=>{
        return moment().format('ll');
    }
    return { formatted }
}
