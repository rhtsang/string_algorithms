#include "BoyerMoore.h"
#include "Zalgorithm.h"
#include "gtest/gtest.h"
#include "BoyerMoorePreprocessing.h"

using testing::Test;

#include <algorithm>
#include <random>
#include <string>

#define NUM_TEST_CASES 10000
#define RANDOM_STRING_SIZE 100
#define RANDOM_SUBSTRING_SIZE 4

// Sanity check for BoyerMoore & ZalgorithmBasedMatching
// Does NUM_TEST_CASES times:
//    1) Generate random string T of size RANDOM_STRING_SIZE
//    2) Generate a random substring P of T
//    3) Runs BoyerMoore and ZalgorithmBasedMatching and checks results are identical
// Use <random> & uniform_int_distribution for your random number generation
TEST(TwoAlgorithmVerificationSanityCheck, SubstringMatchesInRandomString) {
  const std::string Sigma = "abcdefghijklmnopqrstuvwxyz";
  // TODO: implement this.

  std::default_random_engine generator;
  std::uniform_int_distribution<int> letterDistribution(0, 25);
  std::uniform_int_distribution<int> substringDistribution(1, RANDOM_STRING_SIZE);
  for (int i = 0; i < NUM_TEST_CASES; i++) {
    std::string T = " ";
    for (int j = 0; j < RANDOM_STRING_SIZE; j++) {
      T.push_back('a' + letterDistribution(generator));
    }
    int start = substringDistribution(generator), end = substringDistribution(generator);
    if (start > end) {
      std::swap(start, end);
    }
    std::string P = " " + T.substr(start, end);
    std::list<int> Z_matches, BM_matches;
    ZalgorithmBasedMatching(P, T, &Z_matches);
    BoyerMoore(P, T, Sigma, &BM_matches);

    std::list<int>::iterator itr1 = Z_matches.begin();
    std::list<int>::iterator itr2 = BM_matches.begin();
    for (; itr1 != Z_matches.end() && itr2 != BM_matches.end(); ++itr1, ++itr2)
    {
	EXPECT_EQ(*itr1, *itr2);
    }

}
}

// Sanity check for BoyerMoore & ZalgorithmBasedMatching
// Does NUM_TEST_CASES times:
//    1) Generate random string T of size RANDOM_STRING_SIZE
//    2) Generate a random substring P of size RANDOM_SUBSTRING_SIZE (no relationship to T)
//    3) Runs BoyerMoore and ZalgorithmBasedMatching and checks results are identical
// Use <random> & uniform_int_distribution for your random number generation
TEST(TwoAlgorithmVerificationSanityCheck, RandomSubstringVsRandomString) {
  const std::string Sigma = "abcdefghijklmnopqrstuvwxyz";
  // TODO: implement this.

  std::default_random_engine generator;
  std::uniform_int_distribution<int> letterDistribution(0, 25);
  std::uniform_int_distribution<int> substringDistribution(1, RANDOM_STRING_SIZE);
 
  for (int i = 0; i < NUM_TEST_CASES; i++) {
    std::string T = " ";
    for (int j = 0; j < RANDOM_STRING_SIZE; j++) {
      T.push_back('a' + letterDistribution(generator));
    }
 
    std::string P = " ";
    for (int k = 0; k < RANDOM_SUBSTRING_SIZE; k++) {
      P.push_back('a' + letterDistribution(generator));
    }
    
    std::list<int> Z_matches, BM_matches;
    ZalgorithmBasedMatching(P, T, &Z_matches);
    BoyerMoore(P, T, Sigma, &BM_matches);

    std::list<int>::iterator itr1 = Z_matches.begin();
    std::list<int>::iterator itr2 = BM_matches.begin();
    for (; itr1 != Z_matches.end() && itr2 != BM_matches.end(); ++itr1, ++itr2)
    {
        EXPECT_EQ(*itr1, *itr2);
    }

  }

}

int main(int argc, char** argv) {
   testing::InitGoogleTest(&argc, argv);
   return RUN_ALL_TESTS();
}
