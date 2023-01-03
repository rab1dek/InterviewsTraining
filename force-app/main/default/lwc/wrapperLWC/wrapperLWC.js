import { LightningElement, track, wire } from 'lwc';
import getWrapperRecords from '@salesforce/apex/WrapperClassController.getWrapperRecords';
import getRecordWrap from '@salesforce/apex/ClassWrapperController.getRecordWrap';

export default class WrapperLWC extends LightningElement {
    @track accounts;
    errors;
    
    @wire(getWrapperRecords)
    wiredWrapperRecords({error, data}) {
        if (data) {
            this.accounts = data;
        } else if (error) {
            this.errors = error;
            console.error(error);
        }
    }
    
   /*
   @wire(getRecordWrap)
   recordWrap({error, data}) {
    if (data) {
        this.accounts = data;
        console.log(data);
    } else if (error) {
        this.errors = error;
        console.error(error);
    }
    */
}