//SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.8.0;
pragma experimental ABIEncoderV2;

contract MedicalHistory {
    mapping(string => MedicalRecord[]) medicalRecords;

    struct MedicalRecord {
        string id;
        string userId;
        string hospitalName;
        string doctorName;
        string diagnosis;
        string prescription;
        string[] files;   
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

}