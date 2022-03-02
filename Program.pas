{
This program was created by Nathan Torrezao, Sedera Bess, Tristan Daly, Denesea Freeman and Angelayra Lindon.
Created on Jan 10th 2022.
This program was created for a cxc IT SBA.

The program is ment to collect data of students from Guyana, Barbados, Trinidad and Jamaica who has paid their fees fully
then store the gender, country and amount paid, and display this data.
}

Program InformationTechSBA;

Var { List of variables }
    select:integer;
    stopped:boolean;
    gender:string;
    country:string;
    paymentStatus:string;
    amountPaid:real;
    students:integer;
    male:integer;
    female:integer;
    maleGuy:integer;
    maleJam:integer;
    maleTrin:integer;
    maleBar:integer;
    femaleGuy:integer;
    femaleJam:integer;
    femaleTrin:integer;
    femaleBar:integer;
    payment:real;
    malePaymentGuy:real;
    malePaymentJam:real;
    malePaymentTrin:real;
    malePaymentBar:real;
    femalePaymentGuy:real;
    femalePaymentJam:real;
    femalePaymentTrin:real;
    femalePaymentBar:real;

Begin { Begins the process }

    { Initializes all variables }
    select := 0;
    stopped := false;
    gender := ' ';
    country := ' ';
    paymentStatus := ' ';
    amountPaid := 0;
    students := 0;
    male := 0;
    female := 0;
    maleGuy := 0;
    maleJam := 0;
    maleTrin := 0;
    maleBar := 0;
    femaleGuy := 0;
    femaleJam := 0;
    femaleTrin := 0;
    femaleBar := 0;
    payment := 0;
    malePaymentGuy := 0;
    malePaymentJam := 0;
    malePaymentTrin := 0;
    malePaymentBar := 0;
    femalePaymentGuy := 0;
    femalePaymentJam := 0;
    femalePaymentTrin := 0;
    femalePaymentBar := 0;

    Repeat { Repeats until the user inputs an option from 1 - 3 }
        writeln('Welcome, Please select one.');
        writeln('Press [1] to end the program.');
        writeln('Press [2] to record data.');
        writeln('Press [3] to display the data.');
        readln(select);
    Until ((select = 1) Or (select = 2) Or (select = 3));

    Repeat { Repeats until stopped is equal to true }
        If (select = 1) Then { If the selected option is 1 set stopped to true }
            Begin
                select := 0; { Reset select to 0 }
                stopped := true; { Sets stopped to true to end the program }
            End;
        If (select = 2) Then { If the selected option is 2 start prompting for data }
            Begin
                select := 0; { Reset select to 0 }
                Repeat { Repeats until the user inputs a valid country }
                    writeln;
                    writeln('Please enter your country.');
                    readln(country);
                Until ((country = 'guyana') Or (country = 'Guyana') Or (country = 'jamaica') Or (country = 'Jamaica') Or (country = 'trinidad') Or (country = 'Trinidad') Or (country = 'barbados') Or (country = 'Barbados'));

                If ((country = 'guyana') Or (country = 'Guyana')) Then { If the country is guyana then countinue user as guyana }
                    Begin
                        Repeat { Repeats until the user inputs a valid gender }
                            writeln;
                            writeln('What gender are you?');
                            readln(gender);
                        Until ((gender = 'male') Or (gender = 'Male') Or (gender = 'm') Or (gender = 'M') Or (gender = 'female') Or (gender = 'Female') Or (gender = 'f') Or (gender = 'F'));
                        If ((gender = 'male') Or (gender = 'Male') Or (gender = 'm') Or (gender = 'M')) Then { If gender is male, Male, m or M then continue as male }
                            Begin
                                Repeat { Repeats until the user inputs a valid reply of yes/no }
                                    writeln;
                                    writeln('Have you paid fully?');
                                    readln(paymentStatus);
                                Until ((paymentStatus = 'yes') Or (paymentStatus = 'Yes') Or (paymentStatus = 'y') Or (paymentStatus = 'Y') Or (paymentStatus = 'no') Or (paymentStatus = 'No') Or (paymentStatus = 'n') Or (paymentStatus = 'N'));
                                If ((paymentStatus = 'yes') Or (paymentStatus = 'Yes') Or (paymentStatus = 'y') Or (paymentStatus = 'Y')) Then { If paymentStatus is yes, Yes, y or Y then continue as fully paid }
                                    Begin
                                        Repeat { Repeats until the value entered in greater than 0 }
                                            writeln;
                                            write('Please enter the amount you have paid: ');
                                            readln(amountPaid);
                                        Until (amountPaid > 0);
                                        students := students + 1; { Add 1 to students }
                                        male := male + 1; { Add 1 to male }
                                        maleGuy := maleGuy + 1; { Add 1 to maleGuy }
                                        malePaymentGuy := malePaymentGuy + amountPaid; { Add the amountPaid to malePaymentGuy }
                                        payment := payment + amountPaid; { Add the amountPaid to payment }
                                        writeln;
                                    End
                                Else { Else continue as parcial payment/not paid }
                                    Begin
                                        writeln;
                                        write('You have not fully paid, ');
                                    End
                            End
                        Else { Else continue as female }
                            Begin
                                Repeat { Repeats until the user inputs a valid reply of yes/no }
                                    writeln;
                                    writeln('Have you paid fully?');
                                    readln(paymentStatus);
                                Until ((paymentStatus = 'yes') Or (paymentStatus = 'Yes') Or (paymentStatus = 'y') Or (paymentStatus = 'Y') Or (paymentStatus = 'no') Or (paymentStatus = 'No') Or (paymentStatus = 'n') Or (paymentStatus = 'N'));
                                If ((paymentStatus = 'yes') Or (paymentStatus = 'Yes') Or (paymentStatus = 'y') Or (paymentStatus = 'Y')) Then { If paymentStatus is yes, Yes, y or Y then continue as fully paid }
                                    Begin
                                        Repeat { Repeats until the value entered in greater than 0 }
                                            writeln;
                                            write('Please enter the amount you have paid: ');
                                            readln(amountPaid);
                                        Until (amountPaid > 0);
                                        students := students + 1; { Add 1 to students }
                                        female := female + 1; { Add 1 to female }
                                        femaleGuy := femaleGuy + 1; { Add 1 to femaleGuy }
                                        femalePaymentGuy := femalePaymentGuy + amountPaid; { Add the amountPaid to femalePaymentGuy }
                                        payment := payment + amountPaid; { Add the amountPaid to payment }
                                        writeln;
                                    End
                                Else { Else continue as parcial payment/not paid }
                                    Begin
                                        writeln;
                                        write('You have not fully paid, ');
                                    End
                            End
                    End
                Else If ((country = 'jamaica') Or (country = 'Jamaica')) Then { Else if the country is jamaica then countinue user as jamaica }
                         Begin
                             Repeat { Repeats until the user inputs a valid gender }
                                 writeln;
                                 writeln('What gender are you?');
                                 readln(gender);
                             Until ((gender = 'male') Or (gender = 'Male') Or (gender = 'm') Or (gender = 'M') Or (gender = 'female') Or (gender = 'Female') Or (gender = 'f') Or (gender = 'F'));
                             If ((gender = 'male') Or (gender = 'Male') Or (gender = 'm') Or (gender = 'M')) Then { If gender is male, Male, m or M then continue as male }
                                 Begin
                                     Repeat { Repeats until the user inputs a valid reply of yes/no }
                                         writeln;
                                         writeln('Have you paid fully?');
                                         readln(paymentStatus);
                                     Until ((paymentStatus = 'yes') Or (paymentStatus = 'Yes') Or (paymentStatus = 'y') Or (paymentStatus = 'Y') Or (paymentStatus = 'no') Or (paymentStatus = 'No') Or (paymentStatus = 'n') Or (paymentStatus = 'N'));
                                     If ((paymentStatus = 'yes') Or (paymentStatus = 'Yes') Or (paymentStatus = 'y') Or (paymentStatus = 'Y')) Then { If paymentStatus is yes, Yes, y or Y then continue as fully paid }
                                         Begin
                                             Repeat { Repeats until the value entered in greater than 0 }
                                                 writeln;
                                                 write('Please enter the amount you have paid: ');
                                                 readln(amountPaid);
                                             Until (amountPaid > 0);
                                             students := students + 1; { Add 1 to students }
                                             male := male + 1; { Add 1 to male }
                                             maleJam := maleJam + 1; { Add 1 to maleJam }
                                             malePaymentJam := malePaymentJam + amountPaid; { Add the amountPaid to malePaymentJam }
                                             payment := payment + amountPaid; { Add the amountPaid to payment }
                                             writeln;
                                         End
                                     Else { Else continue as parcial payment/not paid }
                                         Begin
                                             writeln;
                                             write('You have not fully paid, ');
                                         End
                                 End
                             Else { Else continue as female }
                                 Begin
                                     Repeat { Repeats until the user inputs a valid reply of yes/no }
                                         writeln;
                                         writeln('Have you paid fully?');
                                         readln(paymentStatus);
                                     Until ((paymentStatus = 'yes') Or (paymentStatus = 'Yes') Or (paymentStatus = 'y') Or (paymentStatus = 'Y') Or (paymentStatus = 'no') Or (paymentStatus = 'No') Or (paymentStatus = 'n') Or (paymentStatus = 'N'));
                                     If ((paymentStatus = 'yes') Or (paymentStatus = 'Yes') Or (paymentStatus = 'y') Or (paymentStatus = 'Y')) Then { If paymentStatus is yes, Yes, y or Y then continue as fully paid }
                                         Begin
                                             Repeat { Repeats until the value entered in greater than 0 }
                                                 writeln;
                                                 write('Please enter the amount you have paid: ');
                                                 readln(amountPaid);
                                             Until (amountPaid > 0);
                                             students := students + 1; { Add 1 to students }
                                             female := female + 1; { Add 1 to female }
                                             femaleJam := femaleJam + 1; { Add 1 to femaleJam }
                                             femalePaymentJam := femalePaymentJam + amountPaid; { Add the amountPaid to femalePaymentJam }
                                             payment := payment + amountPaid; { Add the amountPaid to payment }
                                             writeln;
                                         End
                                     Else { Else continue as parcial payment/not paid }
                                         Begin
                                             writeln;
                                             write('You have not fully paid, ');
                                         End
                                 End
                         End
                Else If ((country = 'trinidad') Or (country = 'Trinidad')) Then { Else if the country is trinidad then countinue user as trinidad }
                         Begin
                             Repeat { Repeats until the user inputs a valid gender }
                                 writeln;
                                 writeln('What gender are you?');
                                 readln(gender);
                             Until ((gender = 'male') Or (gender = 'Male') Or (gender = 'm') Or (gender = 'M') Or (gender = 'female') Or (gender = 'Female') Or (gender = 'f') Or (gender = 'F'));
                             If ((gender = 'male') Or (gender = 'Male') Or (gender = 'm') Or (gender = 'M')) Then { If gender is male, Male, m or M then continue as male }
                                 Begin
                                     Repeat { Repeats until the user inputs a valid reply of yes/no }
                                         writeln;
                                         writeln('Have you paid fully?');
                                         readln(paymentStatus);
                                     Until ((paymentStatus = 'yes') Or (paymentStatus = 'Yes') Or (paymentStatus = 'y') Or (paymentStatus = 'Y') Or (paymentStatus = 'no') Or (paymentStatus = 'No') Or (paymentStatus = 'n') Or (paymentStatus = 'N'));
                                     If ((paymentStatus = 'yes') Or (paymentStatus = 'Yes') Or (paymentStatus = 'y') Or (paymentStatus = 'Y')) Then { If paymentStatus is yes, Yes, y or Y then continue as fully paid }
                                         Begin
                                             Repeat { Repeats until the value entered in greater than 0 }
                                                 writeln;
                                                 write('Please enter the amount you have paid: ');
                                                 readln(amountPaid);
                                             Until (amountPaid > 0);
                                             students := students + 1; { Add 1 to students }
                                             male := male + 1; { Add 1 to male }
                                             maleTrin := maleTrin + 1; { Add 1 to maleTrin }
                                             malePaymentTrin := malePaymentTrin + amountPaid; { Add the amountPaid to malePaymentTrin }
                                             payment := payment + amountPaid; { Add the amountPaid to payment }
                                             writeln;
                                         End
                                     Else { Else continue as parcial payment/not paid }
                                         Begin
                                             writeln;
                                             write('You have not fully paid, ');
                                         End
                                 End
                             Else { Else continue as female }
                                 Begin
                                     Repeat { Repeats until the user inputs a valid reply of yes/no }
                                         writeln;
                                         writeln('Have you paid fully?');
                                         readln(paymentStatus);
                                     Until ((paymentStatus = 'yes') Or (paymentStatus = 'Yes') Or (paymentStatus = 'y') Or (paymentStatus = 'Y') Or (paymentStatus = 'no') Or (paymentStatus = 'No') Or (paymentStatus = 'n') Or (paymentStatus = 'N'));
                                     If ((paymentStatus = 'yes') Or (paymentStatus = 'Yes') Or (paymentStatus = 'y') Or (paymentStatus = 'Y')) Then { If paymentStatus is yes, Yes, y or Y then continue as fully paid }
                                         Begin
                                             Repeat { Repeats until the value entered in greater than 0 }
                                                 writeln;
                                                 write('Please enter the amount you have paid: ');
                                                 readln(amountPaid);
                                             Until (amountPaid > 0);
                                             students := students + 1; { Add 1 to students }
                                             female := female + 1; { Add 1 to female }
                                             femaleTrin := femaleTrin + 1; { Add 1 to femaleTrin }
                                             femalePaymentTrin := femalePaymentTrin + amountPaid; { Add the amountPaid to femalePaymentTrin }
                                             payment := payment + amountPaid; { Add the amountPaid to payment }
                                             writeln;
                                         End
                                     Else { Else continue as parcial payment/not paid }
                                         Begin
                                             writeln;
                                             write('You have not fully paid, ');
                                         End
                                 End
                         End
                Else { Else countinue user as barbados }
                    Begin
                        Repeat { Repeats until the user inputs a valid gender }
                            writeln;
                            writeln('What gender are you?');
                            readln(gender);
                        Until ((gender = 'male') Or (gender = 'Male') Or (gender = 'm') Or (gender = 'M') Or (gender = 'female') Or (gender = 'Female') Or (gender = 'f') Or (gender = 'F'));
                        If ((gender = 'male') Or (gender = 'Male') Or (gender = 'm') Or (gender = 'M')) Then { If gender is male, Male, m or M then continue as male }
                            Begin
                                Repeat { Repeats until the user inputs a valid reply of yes/no }
                                    writeln;
                                    writeln('Have you paid fully?');
                                    readln(paymentStatus);
                                Until ((paymentStatus = 'yes') Or (paymentStatus = 'Yes') Or (paymentStatus = 'y') Or (paymentStatus = 'Y') Or (paymentStatus = 'no') Or (paymentStatus = 'No') Or (paymentStatus = 'n') Or (paymentStatus = 'N'));
                                If ((paymentStatus = 'yes') Or (paymentStatus = 'Yes') Or (paymentStatus = 'y') Or (paymentStatus = 'Y')) Then { If paymentStatus is yes, Yes, y or Y then continue as fully paid }
                                    Begin
                                        Repeat { Repeats until the value entered in greater than 0 }
                                            writeln;
                                            write('Please enter the amount you have paid: ');
                                            readln(amountPaid);
                                        Until (amountPaid > 0);
                                        students := students + 1; { Add 1 to students }
                                        male := male + 1; { Add 1 to male }
                                        maleBar := maleBar + 1; { Add 1 to maleBar }
                                        malePaymentBar := malePaymentBar + amountPaid; { Add the amountPaid to malePaymentBar }
                                        payment := payment + amountPaid; { Add the amountPaid to payment }
                                        writeln;
                                    End
                                Else { Else continue as parcial payment/not paid }
                                    Begin
                                        writeln;
                                        write('You have not fully paid, ');
                                    End
                            End
                        Else { Else continue as female }
                            Begin
                                Repeat { Repeats until the user inputs a valid reply of yes/no }
                                    writeln;
                                    writeln('Have you paid fully?');
                                    readln(paymentStatus);
                                Until ((paymentStatus = 'yes') Or (paymentStatus = 'Yes') Or (paymentStatus = 'y') Or (paymentStatus = 'Y') Or (paymentStatus = 'no') Or (paymentStatus = 'No') Or (paymentStatus = 'n') Or (paymentStatus = 'N'));
                                If ((paymentStatus = 'yes') Or (paymentStatus = 'Yes') Or (paymentStatus = 'y') Or (paymentStatus = 'Y')) Then { If paymentStatus is yes, Yes, y or Y then continue as fully paid }
                                    Begin
                                        Repeat { Repeats until the value entered in greater than 0 }
                                            writeln;
                                            write('Please enter the amount you have paid: ');
                                            readln(amountPaid);
                                        Until (amountPaid > 0);
                                        students := students + 1; { Add 1 to students }
                                        female := female + 1; { Add 1 to female }
                                        femaleBar := femaleBar + 1; { Add 1 to femaleBar }
                                        femalePaymentBar := femalePaymentBar + amountPaid; { Add the amountPaid to femalePaymentBar }
                                        payment := payment + amountPaid; { Add the amountPaid to payment }
                                        writeln;
                                    End
                                Else { Else continue as parcial payment/not paid }
                                    Begin
                                        writeln;
                                        write('You have not fully paid, ');
                                    End
                            End
                    End;
                Repeat { Repeats until the user inputs an option from 1 - 3 }
                    If (amountPaid = 0) Then
                        Begin
                            writeln('Your data has not been recorded.');
                        End
                    Else
                        Begin
                            writeln('Your data has been recorded.');
                        End;
                    writeln('Press [1] to end the program.');
                    writeln('Press [2] to record more data.');
                    writeln('Press [3] to display the data.');
                    readln(select);

                    { Reset gender, country paymentStatus and amountPaid }
                    gender := ' ';
                    country := ' ';
                    paymentStatus := ' ';
                    amountPaid := 0;
                Until ((select = 1) Or (select = 2) Or (select = 3));
            End;
        If (select = 3) Then { If the selected option is 3 prompt for user to select a display option }
            Begin
                Repeat { Repeats until select is 1 or 2 }
                    select := 0; { Reset select to 0 }
                    Repeat { Repeats until the user inputs an option from 1 - 3 }
                        writeln;
                        writeln('What data would you like to display?');
                        writeln('Press [1] for all.');
                        writeln('Press [2] for total students.');
                        writeln('Press [3] for total payments.');
                        readln(select);
                    Until ((select = 1) Or (select = 2) Or (select = 3));
                    If ((select = 1) Or (select = 2)) Then { If select is 1 or 2 then display the total students }
                        Begin
                            writeln;
                            writeln('Total Students');
                            writeln('_______________________________________________________');
                            writeln('Total               ->      ', students);
                            writeln('Male                ->      ', male);
                            writeln('Female              ->      ', female);
                            writeln('_______________________________________________________');
                            writeln('Guyana              ->      ', maleGuy + femaleGuy);
                            writeln('   Male             ->      ', maleGuy);
                            writeln('   Female           ->      ', femaleGuy);
                            writeln('Jamaica             ->      ', maleJam + femaleJam);
                            writeln('   Male             ->      ', maleJam);
                            writeln('   Female           ->      ', femaleJam);
                            writeln('Trinidad            ->      ', maleTrin + femaleTrin);
                            writeln('   Male             ->      ', maleTrin);
                            writeln('   Female           ->      ', femaleTrin);
                            writeln('Barbados            ->      ', maleBar + femaleBar);
                            writeln('   Male             ->      ', maleBar);
                            writeln('   Female           ->      ', femaleBar);
                            writeln('_______________________________________________________');
                        End;
                    If ((select = 1) Or (select = 3)) Then { If select is 1 or 3 then display the total payments }
                        Begin
                            writeln;
                            writeln('Total Payments');
                            writeln('_______________________________________________________');
                            writeln('Total               ->      ', (malePaymentGuy + malePaymentJam + malePaymentTrin + malePaymentBar + femalePaymentGuy + femalePaymentJam + femalePaymentTrin + femalePaymentBar):0:2);
                            writeln('Male                ->      ', (malePaymentGuy + malePaymentJam + malePaymentTrin + malePaymentBar):0:2);
                            writeln('Female              ->      ', (femalePaymentGuy + femalePaymentJam + femalePaymentTrin + femalePaymentBar):0:2);
                            writeln('_______________________________________________________');
                            writeln('Guyana              ->      ', (malePaymentGuy + femalePaymentGuy):0:2);
                            writeln('   Male             ->      ', malePaymentGuy:0:2);
                            writeln('   Female           ->      ', femalePaymentGuy:0:2);
                            writeln('Jamaica             ->      ', (malePaymentJam + femalePaymentJam):0:2);
                            writeln('   Male             ->      ', malePaymentJam:0:2);
                            writeln('   Female           ->      ', femalePaymentJam:0:2);
                            writeln('Trinidad            ->      ', (malePaymentTrin + femalePaymentTrin):0:2);
                            writeln('   Male             ->      ', malePaymentTrin:0:2);
                            writeln('   Female           ->      ', femalePaymentTrin:0:2);
                            writeln('Barbados            ->      ', (malePaymentBar + femalePaymentBar):0:2);
                            writeln('   Male             ->      ', malePaymentBar:0:2);
                            writeln('   Female           ->      ', femalePaymentBar:0:2);
                            writeln('_______________________________________________________');
                        End;
                    select := 0; { Reset select to 0 }
                    Repeat { Repeats until the user inputs an option from 1 - 3 }
                        writeln;
                        writeln('Press [1] end the program.');
                        writeln('Press [2] to record more data.');
                        writeln('Press [3] to display other data.');
                        readln(select);
                    Until ((select = 1) Or (select = 2) Or (select = 3));
                Until ((select = 1) Or (select = 2));
            End;
    Until (stopped = true);
End. { End the process }
