pragma solidity >=0.4.22 <0.7.0;

contract Election {
	// Model a candidate
	struct Candidate {
		uint id;
		string name;
		uint voteCount;
	}

	// Store Candidates

	mapping(uint => Candidate) public candidates;
	// Store Candidates Count
	uint public candidatesCount;

	constructor() public {
		addCandidate("Candidate 1");
		addCandidate("Candidate 2");
	}

	//string public candidate;
	// Constructor
	//constructor() public {
	//	candidate = "Candidate 1";
	//}

	function addCandidate (string memory _name) private {
		candidatesCount ++;
		candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
	}

}
