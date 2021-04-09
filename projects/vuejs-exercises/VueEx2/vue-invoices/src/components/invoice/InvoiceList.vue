<template>
  <div>
    <h1>Invoices</h1>

    <table class="table table-hover">
      <tr>
        <th>Customer<br />Name</th>
        <th>Customer<br />Type</th>
        <th>Original<br />Invoice</th>
        <th>Discount<br />Percentage</th>
        <th>Discounted Invoice<br />Total</th>
      </tr>

      <tr v-for="invoice in invoices" :key="invoice.key">
        <td>{{ invoice.customerName }}</td>
        <td>{{ invoice.customerType }}</td>
        <td>{{ invoice.originalAmt }}</td>
        <td :class="[!invoice.discountPercent?'':'text-success']">{{ invoice.discountPercent }}</td>
        <td>{{ invoice.amount }}</td>
      </tr>
    </table>

    <!-- calculate field -->
    <!-- <h2>Total Invoices: {{ totalAmtInvoices }}</h2> -->
  </div>
</template>

<script>
var hash = require("object-hash");
export default {
  name: "InvoiceList",

  data() {
    return { invoices: this.getInvoiceList() };
  },

  computed: {
    // totalAmtInvoices:function() {   
      
    //   return this.invoices.reduce(function(sum, invoice) {
    //     return sum + parseFloat(invoice.name);
    //   }, 0);
    // },
  },

  methods: {
    getInvoiceList() {
      fetch("http://localhost:3000/api/invoice/invoices")
        .then((response) => response.json())
        .then((json) => {
          this.invoices = json.map((i) => ({ ...i, key: hash(Math.random()) }));
        })
        .catch(err => console.error(err));
    },
  },
};
</script>
