import * as Swal from "sweetalert2";

export function useAction(){

    const swalSuccess = (msg = null) =>{
        Swal.fire(
            'Saved!',
            msg  ?? 'Your file has been Saved.',
            'success'
        )
    }
    const swalError = (msg = null) =>{
        Swal.fire(
            'Saved!',
            msg  ?? 'Action Failed. Try Again',
            'success'
        )
    }


    return {swalSuccess, swalError}
}
