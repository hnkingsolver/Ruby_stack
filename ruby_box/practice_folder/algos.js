// function balance_index(arr){
//     for(var x = 1; x < arr.length; x++){
//     sum_left = 0
//     sum_right = 0
//         for(var y = x - 1; y > - 1; y--){
//             sum_left+=arr[y]
//         }
//         for( var z = x+1; z<arr.length; z++){
//             sum_right +=arr[z]
//         }
//     if (sum_left == sum_right){
//         return "balance index is" + x
//     }
//     }
//     return "there is no balance index"
// }
// console.log(balance_index[1,2,3,4,6])


// function balance(arr){
//     for( var x = 1; x < arr.length; x++){
//         sum_left = 0
//         sum_right = 0
//             for(var y = x; y > -1; y--){
//                 sum_left+= arr[y]
//             }
//             for(var z = x+1; z < arr.length; z++){
//                 sum_right += arr[z]
//             }
//         if (sum_left == sum_right){
//             return "true"
//         }
//         }
//         return "false"
// }
// console.log(balance([1,2,3]))

function binary_search(arr,num){
    //find the middle value... basically splitting array in half
    //returns the value of x rounded down to its nearest integer: math.floor
    var mid = Math.floor(arr.length/2); 
    console.log(arr[mid], num);

// if that mid value ==  to the number you guessed.. console log "match"
    if (arr[mid] === num){
        console.log('match', arr[mid], num);
        return arr[mid];
    }
    else if (arr[mid] < num && arr.length > 1){
        console.log('mid lower', arr[mid], num);
        //remove item from array w/ splice
        return binary_search(arr.splice(mid, Number.MAX_VALUE), num);   
    }
    else if (arr[mid] > num && arr.length > 1) {
        console.log('mid higher', arr[mid], num);
        //remove item from array w/ splice
        return binary_search(arr.splice(0, mid), num);
    }
    else {
        console.log('not here', num);
        return -1;
    }

}
console.log(binary_search([1,3,7,13,40,66,89,99], 13))
//-------------------------------------------------------------------------
//find the shortest distance for all the points to get to
// y = [
//     [7,2],
//     [3,4],
//     [5,8],
//     [9,2],
//     [5,3]
// ]

// // x = [
// //     [0,1,2,3,4,5,6,7,8,9],
// //     [0,1,2,3,4,5,6,7,8,9],
// //     [0,1,2,3,4,5,6,7,8,9],
// //     [0,1,2,3,4,5,6,7,8,9],
// //     [0,1,2,3,4,5,6,7,8,9],
// //     [0,1,2,3,4,5,6,7,8,9],
// //     [0,1,2,3,4,5,6,7,8,9],
// //     [0,A,2,3,4,5,6,7,8,9],
// //     [0,1,2,3,4,5,6,7,8,9],
// //     [0,1,2,3,4,5,6,7,8,9]
// // ]

// function midpoint(y) {
//     sum1 = 0;
//     sum2 = 0;
//     midpoint = [];
//     for (var i=0; i<y.length; i++) {
//         sum1 += y[i][0];
//         sum2 += y[i][1];
//     }
//     avg1 = sum1/y.length;
//     avg2 = sum2/y.length;
//     midpoint.push(Math.floor(avg1),Math.floor(avg2));
//     return midpoint;
// }
// console.log(midpoint(y))
//--------------------------------------------------------------------------------

// function SLIST(){
//     this.head = null;
// }

// function SLNODE(){
//     this.val = val;
//     this.next = null;
// }

// function loop(list){
//     runner = list.head;
//     dict = {}
//     while(runner.next != null){
//         dict[runner.val] = 
//         if(runner.next in dict){
//             return true
//         }
//         runner = runner.next
//     }
//     return false
// }
// console.log(loop(list))


// function loop(list){
//     runner = list.head;
//     dict = {}
//     while(runner.next != null){
//         dict[runner.val,runner.next.val] = 1
//         if(runner.next in dict){
//             runner.next = null
//         }
//         runner = runner.next
//     }
//     return list
// }
// console.log(loop(list))
//_____________________________________________________________________________________________
// function BTNode (value) {
//     this.val = value;
//     this.left = null;
//     this.right = null;
// }

// function BST() {
//     this.root = null;
//     var currentNode = this.BTNode(value);
//     if (!this.root) {
//         this.root = currentNode;
//     }
//     else {
//         this.insert(currentNode);
//     }
//     return this;
// }
//?????????????????????????
//_______________________________________________________________________________________________
// function balance(root){
//     var left = height(root.left)
//     var right = height(root.right)
//     if left==0 && right==0 {
//         return true
//     }
//     if(left - right <= 1 && left - right >= -1){

//         return balance(root.left) && balance(root.right)  
//     }
//     else{
//         return false
//     }
// }
// //________________________________________________________________________________________________
// class TrieSet {
//     this.root = new TrieNode();
//     this.dict = {"a":0}

//     function insert (str) {
//         runner = this.root
//         for(i=0; i < str.length; i++){
//             if (runner.children[dict[str[i]]]){
//                 runner = runner.children[dict[str[i]]]
//             }
//             else {
//                 runner.children[dict[str[i]]] = new TrieNode()
//                 runner = runner.children[dict[str[i]]]
//             }
//         }
//         if (!runner.val){
//         runner.val = str
//         return true
//         }
//         return false
//     }
// }

// class TrieNode {
//     this.val = "";
//     this.children = [];
// }




