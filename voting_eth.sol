// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
/// @title Voting with delegation.
contract Ballot {
    // this declares a new complex type which will be used
    // variables later.
    // it will represent a single voter.
    struct Voter {
        uint weight; // weight is acummulated by delegation.
        bool voted; // if true, that person already voted for
        address delegate; // person delegated to 
        uint vote; // index of the voted proposal
    }
    // this is a type for a single proposal
    struct Proposal {
        bytes32 name; // short name (up to 32 bytes)
        uint voteCount; // number of accumulated votes
    }

    address public chairperson; 

    // this declares a state variable that 
    // stores a "Voter" struct for each possible address.
    mapping(address => Voter) public voters;

    // a dynamically-sized array of "Proposal" structs.
    Proposal[] public proposals;

    ///Create a new ballot to choose one of 'proposalNames'.
    constructor(bytes32[] memory proposalNames) {
        chairperson = msg.sender;
        voters[chairperson].weight = 1;


    
}
