//Author: TUSHAR SINGH
// Marketplace App to sell or buy the items using BCT
// SPDX-License-Identifier: MIT
pragma solidity >=0.8.4;

contract Marketplace{
    
    struct item{
        uint256 id;
        address payable seller;
        string name;
        uint256 price;
        bool isSold;
    }

    uint256 public itemCount = 0;
    mapping(uint256 =>item) public items;

    event itemListed(uint256 indexed itemId, address indexed seller, string name, uint256 price);
    event itemPurchased(uint256 indexed itemId, address indexed buyer, address indexed seller, uint256 price);


    //function to list all the available items in marketplace
    function listItem(string memory _name, uint256 _price) pure  external {
        require(bytes(_name).length > 0,"Item name is required");
        require(_price > 0,"price should be graeter than 0");

        itemCount++;
        items[itemCount] = item(itemCount, payable(msg.sender),_name,_price,false);

        emit itemListed(itemCount, payable(msg.sender), _name, _price);

    }

    function buyItems(uint256 _itemId) external payable {
        item storage item = items[_itemId];
        require(item.id == _itemId,"item doesn't exists");
        require(msg.value == item.price,"incorrect ether sent");
        require(!item.isSold,"item already sold");
        require(msg.sender != item.seller,"seller cannot buy their own items");

        item.isSold = true;
        item.seller.transfer(msg.value);

        emit itemPurchased(_itemId, msg.sender, item.seller, item.price);

    }
}