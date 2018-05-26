/**
 * Attempting a low gas contract for 1st Solidity Gas Golfing Contest.
 *
 * Submitted under ENS; r-block.eth
 */

pragma solidity 0.4.24;

contract Sort {
    uint[] public data;
    function set(uint[] _data) public { data = _data; }
    function sort() public {
        if (data.length == 0)
            return (bytes32);
        quickSort(data, 0, data.length - 1);
    }
    function quickSort(uint[] storage arr, uint left, uint right) internal {
        uint i = left;
        uint j = right;
        uint pivot = arr[left + (right - left) / 2];
        while (i <= j) {
            while (arr[i] < pivot) i++;
            while (pivot < arr[j]) j--;
            if (i <= j) {
                (arr[i], arr[j]) = (arr[j], arr[i]);
                i++;
                j--;
            }
        }
        if (left < j)
            quickSort(arr, left, j);
        if (i < right)
            quickSort(arr, i, right);
    }
}
