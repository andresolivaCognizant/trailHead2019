public with sharing class test {
    public test() {
        string strWellcome= 'Hello trailblaser, store in github';
        integer intCount = 2;
        string strOutput;
        for(integer i=1; i<8; i++ )
        {
            strOutput = strWellcome + i;
        }        
        system.debug('\n wellcome !!!! @@@' + strOutput );
    }
}