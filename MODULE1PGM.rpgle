     H
     D To_Upper        PR            50A
     D  String                       50A
      *
     D To_Lower        PR            50A
     D  String                       50A
      *
     D Var             S             50A
     D Var1            S             50A
      *
      /Free

            Var1 = 'This is upper';
            Var = To_Upper(var1);
            Dsply Var;

            Var1 = 'THIS IS LOWER';
            Var = To_Lower(var1);
            Dsply Var;

          *inlr = *on;
      /end-free
