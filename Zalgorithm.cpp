#include <list>
#include <string>
#include <vector>
#include <string.h>
#include <iostream>

#include "Zalgorithm.h"

// Input: Pattern P, text T, data structure matches to store result
//      P is 1-indexed, so we represent the pattern "abc" by P = " abc"
//      T is also 1-indexed
// Output: Indices corresponding to occurrances of P in T
void ZalgorithmBasedMatching(
    const std::string& P,
    const std::string& T,
    std::list<int>* matches) {

    std::string concat = P + T;
    concat[P.length()] = '$';

    std::vector<int> indices;
    Zalgorithm(concat, &indices);


    for (std::vector<int>::iterator itr = indices.begin(); itr != indices.end(); itr++) {
    	if (*itr == (P.length() - 1)) {
		matches->push_back(itr - indices.begin() - P.length());
	}
    }

}

// Input: String S, data structure Z to store result
//      S is 1-indexed, so we represent the string "abc" by S = " abc"
// Output: Indices corresponding to occurrances of P in T
void Zalgorithm(const std::string& S, std::vector<int>* Z) {

    int l = 0;
    int r = 0;
    int R = 0;
    int k2 = 0;


    //initialize Z
    Z->push_back(0);
    Z->push_back(0);



    for (int k = 2; k < S.length(); k++)
    {
        if(k > r)
        {
            int matchLen = MatchLength(S, 1, k);
            Z->push_back(matchLen);
            if (matchLen != 0)
            {
                l = k;
                r = l + matchLen - 1;
            } // if Z[k] != 0
        } // k > r
        
        else
        {
            R = r - k + 1;
            k2 = k - l + 1;
            if ((*Z)[k2] < R)
            {
                Z->push_back((*Z)[k2]);
            }
            
            else
            {
                int q = r + MatchLength(S, R, r);
                l = k;
                r = q - 1;
                Z->push_back(q - k);
            }
            
        } // else k <= r
        
    } //for k from 2 to n

}

// Input: String S, positions i and j of S
//      S is 1-indexed, so we represent the string "abc" by S = " abc"
// Output: length of longest common prefix of S[i, n] and S[j, n] where n = |S|
int MatchLength(const std::string& S, int i, int j) {
    // TODO: Implement this
    int result;
    for (result = 0; i + result < S.length() && j + result < S.length() &&
            S[i + result] == S[j + result]; result++) {}
    return result;
}

/*
int main(){
    std::string t = " babbbaabba";
    std::string p = " abb";

    std::list<int> m;    

    ZalgorithmBasedMatching(p, t, &m);

    for(std::list<int>::iterator i = m.begin(); i != m.end(); i++)
      std::cout << *i << std::endl;
    
    return 0;
}*/
