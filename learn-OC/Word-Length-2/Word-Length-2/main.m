//
//  main.m
//  Word-Length-2
//
//  Created by SaberYang on 14-10-21.
//  Copyright (c) 2014年 SaberYang. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
         FILE *wordFile = fopen("/tmp/words.txt", "r" );
         char word[100];
         while (fgets(word, 100, wordFile))
         {
             word[strlen(word)-1]='\0';
             NSLog(@"%s is %lu characters long", word , strlen(word));
         }
         fclose (wordFile);
    return 0;
}
