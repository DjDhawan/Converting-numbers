
     H NoMain
     D NewStr1         S             50A
     D UpCase          C                   'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
     D LoCase          C                   'abcdefghijklmnopqrstuvwxyz'
      *
     D To_Upper        PR            50A
     D   String                      50A

     D To_Lower        PR            50A
     D   String                      50A
      *
     P To_Upper        B                   Export
     D To_Upper        PI            50A
     D   String                      50A
     D NewString       S             50A

        NewString = %Xlate(LoCase:UpCase:String);
        Return NewString;
     P To_Upper        E

      *
     P To_Lower        B                   Export
     D To_Lower        PI            50A
     D   String                      50A
     D NewString       S             50A

        NewString = %Xlate(UpCase:LoCase:String);
        Return NewString;
     P To_Lower        E
