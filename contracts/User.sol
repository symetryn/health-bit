//SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.8.0;
pragma experimental ABIEncoderV2;

contract MedicalHistory {
    mapping(string => MedicalRecord[]) medicalRecords;
    mapping(string => User) users;
    

    struct MedicalRecord {
        string id;
        string userId;
        string hospitalName;
        string doctorName;
        string diagnosis;
        string prescription;
        string[] files;
       
    }
    struct User {
        string id;
        string name;
    }


    function createNewUser(
        string memory id,
        string memory name
        
    ) public {
        
         User memory user = User(id,name);
        users[id]=user;
        
    }
    function addMedicalRecord(
        string memory id,
        MedicalRecord memory record
    ) public {
        
        medicalRecords[id].push(record);
        
    }
    function getMedicalRecord(
        string memory id
    )  public
        view
        returns (MedicalRecord[] memory) {
        
        return medicalRecords[id];
        
    }
    
    
    function getUserById(
        string memory id
    ) public
        view
        returns (User memory){
        
      return  users[id];
        
    }

}