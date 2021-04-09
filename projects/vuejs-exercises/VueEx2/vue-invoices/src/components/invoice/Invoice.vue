<template>
    <div>
        <h1>Create Invoice</h1>
        <form @submit="checkForm" method="post" novalidate="true" class="col-6 text-left mx-2">

            <div class="form-group">
                <label for="customerName" :class="[submit && !checkName?'red text-danger':'']">Customer Name:</label>
                <input class="form-control" type="text" v-on:keyup="checkOnkeyUpForName" v-model="invoice.customerName" name="customerName">
            </div>
            {{ invoice.customerName }}

            <div class="form-group">
                <span class="form-label"><label for="customerType"  :class="[submit && !checkDDL?'red text-danger':'']">
                        Customer Type:
                    </label>
                </span>
                <select class="form-control" v-model="invoice.customerType" name="customerType" id="customerType">
                    <!-- {{#each customerTypes}}
                    <option value="{{this.type}}">{{this.name}}</option>
                    {{/each}} -->
                    <option value="O">Other</option>
                </select>
            </div>

            <div class="form-group">
                <label for="amount" :class="[submit && !checkAmount?'red text-danger':'']">Amount:</label>
                <input class="form-control" type="text" v-model="invoice.invoiceAmt" name="amount">
            </div>

            <button type="submit" class="btn btn-primary">Submit</button>

        </form>

        <div v-if="errors.length">
        <ul class="alert alert-danger">
            <li v-for="error in errors" v-bind:key="error">{{ error }}</li>
        </ul>
        </div>

        <div v-if="msgs.length">
        <ul class="alert alert-info">
            <li v-for="msg in msgs" v-bind:key="msg">{{ msg }}</li>
        </ul>
        </div>

    </div>
</template>
<script>
export default {
    data(){
        return{
            invoice: {
                customerName : "",
                customerType : "",
                invoiceAmt:null,
            },
            errors: [],
            msgs:[],
            submit: false,
            checkName:false,
            checkDDL:false,
            checkAmount:false
        }
    },
    
    methods:{

        checkForm: function (e) {
            e.preventDefault();

            this.errors = [];
            this.submit =true;

            this.checkName=this.required("Customer Name", this.invoice.customerName);
            this.checkDDL=this.required("Type", this.invoice.customerType);
            this.checkAmount=this.required("Amount", this.invoice.invoiceAmt);
            this.checkAmount=this.checkNumberValue("Amount", this.invoice.invoiceAmt);

            if(this.errors.length==0){
                if(this.invoice.customerName.length < 3 )
                this.errors.push("Customer name must be greater than 3 characters.")
            }

            if(this.errors.length==0){
                fetch('http://localhost:3000/api/invoice/create/',{
                    method:'post',
                        headers: {
                            'Accept': 'application/json',
                            'Content-Type': 'application/json'
                        },
                        body: JSON.stringify(this.invoice) 
                })
                .then((res) => res.json())
                .then((json) =>{
                    this.msgs =[];
                    this.msgs.push(json);
                });            
            }
        },

        required: function (name,field){
            if(!field){
                this.errors.push(`${name} required.`);
                return false;
            }
            return true;
        },

        checkNumberValue: function (name,field){
            if(isNaN(field)){
                this.errors.push(`${name} must be a number.`);
                return false;
            }else if(field <=0){
                this.errors.push(`${name} must not be negative or a value of zero.`);
                return false;
            }
            return true;
        },

        checkOnkeyUpForName: function(){
            this.errors = [];
            this.checkName=this.required("Customer Name", this.invoice.customerName);
        }

        // validEmail: function(email){
        //     var re = /^[\w-\\.]+@([\w-]+\.)+[\w-]{2,4}$/;
        //     return re.test(email)
        // },
        // validPhone: function(phone){
        //     var re = /^([0-9]( |-)?)?(\(?[0-9]{3}\)?|[0-9]{3})( |-)?([0-9]{3}( |-)?[0-9]{4}|[a-zA-Z0-9]{7})$/;
        //     return re.test(phone)
        // }
    }
}
</script>
<style scoped>
.red{
    border-bottom: 2px solid red;
}
</style>