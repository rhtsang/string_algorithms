#include "Zalgorithm.h"
#include "gtest/gtest.h"

#include <string>

using testing::Test;

// Testing MatchLength calculation when no matches occur
TEST(MatchLengthTest, NoMatchTest) {
  // TODO: Implement this
  
  EXPECT_EQ(0, MatchLength(" abcde", 1, 2));
  EXPECT_EQ(0, MatchLength(" zzyx", 1, 3));

}

// Testing MatchLength calculation when geginning of string matches
TEST(MatchLengthTest, BeginningStringMatch) {
  // TODO: Implement this
  
  EXPECT_EQ(3, MatchLength(" abcabcdef", 1, 4));
  EXPECT_EQ(2, MatchLength(" ababcde", 1, 3));

}

// Testing MatchLength calculation when middle of the string matches
TEST(MatchLengthTest, MidStringMatch) {
  // TODO: Implement this

  EXPECT_EQ(2, MatchLength(" ccabab", 3, 5));
  EXPECT_EQ(3, MatchLength(" abbcabcab", 4, 7));
}

// Testing MatchLength calculation when match stops at end of string
TEST(MatchLengthTest, EndOfStringMatch) {
  // TODO: Implement this

  EXPECT_EQ(3, MatchLength(" abcabc", 1, 4));
  EXPECT_EQ(4, MatchLength(" bcabcdbabcd", 3, 8));
}

// Testing Zalgorithm calculation with string S = " aabcaabxaaz", p.7 Gusfield
TEST(ZalgorithmTest, GusfieldExamplePageSeven) {
  // TODO: Implement this. Check only values given in the text
  
  std::vector<int> z;
  std::string s = " aabcaabxaaz";

  Zalgorithm(s, &z);

  EXPECT_EQ(3, z[5]);
  EXPECT_EQ(1, z[6]);
  EXPECT_EQ(0, z[7]);
  EXPECT_EQ(0, z[8]);
  EXPECT_EQ(2, z[9]);
  

}

int main(int argc, char** argv) {
   testing::InitGoogleTest(&argc, argv);
   return RUN_ALL_TESTS();
}
