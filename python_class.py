class Employee :
    def __init__(self,id, name, place, address, phone):
        self.id = id
        self.name = name
        self.place = place
        self.address = address
        self.phone = phone

    def display_details(self):
        print(f"Employee Id : {self.id}")
        print(f"Employee Name : {self.name}")
        print(f"Place : {self.place}")
        print(f"Address :{self.address}")
        print(f"Phone : {self.phone}")    

emp1 = Employee (1,"Anuraj","Palakkad","ABC House, Main Road, Palakkad","9849341221") 
emp2 = Employee (2,"Rahul","Thrissur","In Ghost House, Pipe line Road, Thrissur","9921345566")
emp3 = Employee (3,"Meenu P C","Ernakulam","Chalakkal House, MG Road, Ernakulam","9961345621")  
print("\nEmployee Details in the Parent class : Employee")
print("*" *48)
emp1.display_details()

class PermanentEmployee (Employee) :
    def __init__(self, id, name, place, address, phone,joining_date, designation, salary):
        super().__init__(id, name, place, address, phone)
        self.joining_date = joining_date
        self.designation = designation
        self. salary = salary

    def display_details(self):  

        super().display_details()
        print(f"Joining date : {self.joining_date}")
        print(f"Designation : {self.designation}")
        print(f"Salary : {self.salary}")
        
pe1 = PermanentEmployee (10,"Thanuja","Paravoor","Mannnath House, Main Road, Paravoor","9922934122","02/03/2010","Accountant",25000)
pe2 = PermanentEmployee (20,"Kabeel","Kannur","Bekkal House, Station Road,Kannur","9849600711","06/05/2015","Manager",30000)
print("\nEmployee Details in the Child class : PermanentEmployee")
print("*" *48)
pe1.display_details()

class ContractEmployee (Employee) :
    def __init__(self, id, name, place, address, phone,start_date,contract_end_date, hourly_rate):
        super().__init__(id, name, place, address, phone)
        self.start_date = start_date
        self.contract_end_date = contract_end_date
        self.hourly_rate = hourly_rate

    def display_details(self):  

        super().display_details()
        print(f"Contract start date : {self.start_date}")
        print(f"Contract end date : {self.contract_end_date}")
        print(f"Hourly rate : {self.hourly_rate}")    

ce1 = ContractEmployee (11,"Janu","Kasargod","Chirakkal House, MG Road, Kasargod","9972345671","01/05/2026","01/05/2027",100)
ce2 = ContractEmployee (21,"Kiran","Wayanad","Thonni House, Fire station Road,Wayanad","9945675671","05/08/2025","05/08/2027",250)
print("\nEmployee Details in the Child class : ContractEmployee")
print("*" *48)

ce2.display_details()








    
