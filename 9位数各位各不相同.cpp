#include<stdio.h>
#include<stdlib.h>
#include<math.h>

/*
某数x的平方为9位数，这个9位数各位各不相同，求x
*/
int main(){
    var i,s;
    char *str = "123456789";//str变量用来存储转换为字符串的i的平方

    for(i=10000;i<=31622;i++){//10000-31622的平方介于100000000到999999999之间
        s = i*i;
        itoa(s,str,10);//把i的平方转换成字符串，存放在str里面

        if( !hasRepeat(str) ){  //如果不存在重复的话，说明这个数由9个不同的数字组成，把i打印出来就可以了
            printf("%d * %d = %d", i, i, i*i );//打印出类似27105 * 27105 = 734681025这样的形式
        }
    }

    return 0;
}

bool hasRepeat(char *str){
    int l = len(str);
    int i,j;
    for(i=0;i<l;i++){
        for(j=i+1;j<l;j++){
            if(str[i]==str[j]){//双重嵌套循环比较任意两个数字，如果相等，就说明有重复，返回true
                return true;
            }
        }
    }
    return false;
}
