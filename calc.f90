program calculator
    implicit none
    integer :: choice
    real :: num1, num2, result
    
    print *, "Enter first number: "
    read *, num1
    
    print *, "Enter second number: "
    read *, num2
    
    print *, "Choose an operation: "
    print *, "1. Add"
    print *, "2. Subtract"
    print *, "3. Multiply"
    print *, "4. Divide"
    
    read *, choice
    
    select case (choice)
        case (1)
            result = num1 + num2
            print *, "Result: ", result
        case (2)
            result = num1 - num2
            print *, "Result: ", result
        case (3)
            result = num1 * num2
            print *, "Result: ", result
        case (4)
            if (num2 == 0) then
                print *, "Error: Division by zero"
            else
                result = num1 / num2
                print *, "Result: ", result
            end if
        case default
            print *, "Invalid choice"
    end select
    
    end program calculator