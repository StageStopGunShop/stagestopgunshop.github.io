

/* Create three columns of equal width */
.columns {
    width: 300px;
    height: auto;
    background-color: rgba(255, 255, 255, .02);
    border-radius: 25px;
    border-left: 1px dashed rgba(244, 123, 32, 1);
    border-right: 1px dashed rgba(244, 123, 32, 1);
    margin: 2.5px;
    margin-bottom: 10px; 
    padding: 0px;
    float: left;
}

/* Style the list */
.price {
    list-style-type: none;
    background-color: rgba(244, 123, 32, 0);
    border: none;
    margin: 0;
    padding: 0;
    -webkit-transition: 0.5s;
    transition: 0.3s;
}

/* Add shadows on hover */
.price:hover {
    box-shadow: 0 8px 12px 0 rgba(0,0,0,0.2);
}

/* Pricing header */
.price .header {
    background-color: rgba(244, 123, 32, 1);
    border-top-left-radius: 25px;
    border-top-right-radius: 25px;
    color: rgba(0, 0, 0, 1);
    font-size: 20px;
    font-weight: bold;
    margin: 0px !important;
}

.price .subheader {
    background-color: rgba(244, 123, 32, 1);
    color: rgba(0, 0, 0, 1);
    font-size: 20px;
    font-weight: bold;
    margin: 0px !important;
}

/* List items */

.price ul {
    font-weight: normal;
    font-size: 12pt;
    text-indent: 0px;
    color: rgba(255, 255, 255, 1);
}

.price li {
    border-bottom: none;
    margin-bottom: 20px;
    padding: 0px;
    font-weight: normal;
    font-size: 12pt;
    text-align: center;
    text-indent: 0px;
    color: rgba(255, 255, 255, 1);
}

/* Grey list item */
.price .grey {
    background-color: rgba(0, 0, 0, 1);
    font-size: 20px;
}

.smallprint, .smallprint p {
    position: relative;
    width: 100%;
    padding-top: 30px;
    font-size: 11px !important;
    text-align: center !important;
}

/* Change the width of the three columns to 100%
(to stack horizontally on small screens) */
@media only screen and (max-width: 600px) {
    .columns {
        width: 90%;
    }
}
