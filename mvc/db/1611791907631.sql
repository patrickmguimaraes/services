--------------------------------ADD COLUMN--------------------------------
ALTER TABLE SVZ98608.Service ALTER COLUMN fkEmployeeResponsibility SET NOT NULL;
ALTER TABLE SVZ98608.Category ADD COLUMN image VARCHAR(255) NOT NULL;
ALTER TABLE SVZ98608.Category ALTER COLUMN image SET NOT NULL;
ALTER TABLE SVZ98608.ServiceUnavailable ALTER COLUMN beginning SET DEFAULT CURRENT_TIMESTAMP;
--------------------------------ADD COLUMN--------------------------------

-------------------------------DROP COLUMN--------------------------------
ALTER TABLE SVZ98608.Person DROP COLUMN NEWPRIMARY;
-------------------------------DROP COLUMN--------------------------------

-------------------------------FOREIGN KEY--------------------------------
ALTER TABLE SVZ98608.Person
   FOREIGN KEY (fkBirthCountry)
       REFERENCES Country (pkCountry)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.JuridicalPerson
   FOREIGN KEY (fkOriginCountry)
       REFERENCES Country (pkCountry)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.IdentificationDocument
   FOREIGN KEY (fkPerson)
       REFERENCES Person (pkPerson)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.IdentificationDocument
   FOREIGN KEY (fkJuridicalPerson)
       REFERENCES JuridicalPerson (pkJuridicalPerson)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.IdentificationDocument
   FOREIGN KEY (fkState)
       REFERENCES State (pkState)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.IdentificationDocument
   FOREIGN KEY (fkCountry)
       REFERENCES Country (pkCountry)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.User
   FOREIGN KEY (fkPerson)
       REFERENCES Person (pkPerson)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.User
   FOREIGN KEY (fkJuridicalPerson)
       REFERENCES JuridicalPerson (pkJuridicalPerson)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.User
   FOREIGN KEY (fkEmployee)
       REFERENCES Employee (pkEmployee)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.User
   FOREIGN KEY (fkCounter)
       REFERENCES Counter (pkCounter)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.User
   FOREIGN KEY (fkBalance)
       REFERENCES Balance (pkBalance)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.Contact
   FOREIGN KEY (fkPerson)
       REFERENCES Person (pkPerson)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.Contact
   FOREIGN KEY (fkJuridicalPerson)
       REFERENCES JuridicalPerson (pkJuridicalPerson)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.Address
   FOREIGN KEY (fkPerson)
       REFERENCES Person (pkPerson)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.Address
   FOREIGN KEY (fkJuridicalPerson)
       REFERENCES JuridicalPerson (pkJuridicalPerson)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.Address
   FOREIGN KEY (fkCity)
       REFERENCES City (pkCity)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.State
   FOREIGN KEY (fkCountry)
       REFERENCES Country (pkCountry)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.Country
   FOREIGN KEY (fkLanguage)
       REFERENCES Language (pkLanguage)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.City
   FOREIGN KEY (fkState)
       REFERENCES State (pkState)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.City
   FOREIGN KEY (fkDepartmentOfFinance)
       REFERENCES DepartmentOfFinance (pkDepartmentOfFinance)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.City
   FOREIGN KEY (fkBalance)
       REFERENCES Balance (pkBalance)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.Employee
   FOREIGN KEY (fkPerson)
       REFERENCES Person (pkPerson)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.Employee
   FOREIGN KEY (fkJuridicalPerson)
       REFERENCES JuridicalPerson (pkJuridicalPerson)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.EmployeeResponsibility
   FOREIGN KEY (fkEmployee)
       REFERENCES Employee (pkEmployee)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.Appointment
   FOREIGN KEY (fkUser)
       REFERENCES User (pkUser)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.Service
   FOREIGN KEY (fkCurrency)
       REFERENCES Currency (pkCurrency)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.Service
   FOREIGN KEY (fkServiceCategory)
       REFERENCES ServiceCategory (pkServiceCategory)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.Service
   FOREIGN KEY (fkEmployeeResponsibility)
       REFERENCES EmployeeResponsibility (pkEmployeeResponsibility)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.Service
   FOREIGN KEY (fkAddress)
       REFERENCES Address (pkAddress)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.Service
   FOREIGN KEY (fkJuridicalPerson)
       REFERENCES JuridicalPerson (pkJuridicalPerson)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.ServiceAppointment
   FOREIGN KEY (fkService)
       REFERENCES Service (pkService)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.ServiceAppointment
   FOREIGN KEY (fkAppointment)
       REFERENCES Appointment (pkAppointment)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.ServiceCategory
   FOREIGN KEY (fkCategory)
       REFERENCES Category (pkCategory)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.Category
   FOREIGN KEY (fkCategory)
       REFERENCES Category (pkCategory)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.Category
   FOREIGN KEY (fkCountry)
       REFERENCES Country (pkCountry)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.ServiceUnavailable
   FOREIGN KEY (fkService)
       REFERENCES Service (pkService)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.ServiceOrder
   FOREIGN KEY (fkAppointment)
       REFERENCES Appointment (pkAppointment)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.ServiceOrder
   FOREIGN KEY (fkJuridicalPerson)
       REFERENCES JuridicalPerson (pkJuridicalPerson)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.ServiceOrder
   FOREIGN KEY (fkCurrency)
       REFERENCES Currency (pkCurrency)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.ServiceOrder
   FOREIGN KEY (fkPerson)
       REFERENCES Person (pkPerson)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.ServiceOrder
   FOREIGN KEY (fkAddress)
       REFERENCES Address (pkAddress)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.UserPayment
   FOREIGN KEY (fkUser)
       REFERENCES User (pkUser)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.ServiceOrderPayment
   FOREIGN KEY (fkServiceOrder)
       REFERENCES ServiceOrder (pkServiceOrder)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.ServiceOrderPayment
   FOREIGN KEY (fkPayment)
       REFERENCES Payment (pkPayment)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.ServiceOrderPayment
   FOREIGN KEY (fkBalanceItem)
       REFERENCES BalanceItem (pkBalanceItem)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.TaxReceipt
   FOREIGN KEY (fkUser)
       REFERENCES User (pkUser)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.TaxReceipt
   FOREIGN KEY (fkEmail)
       REFERENCES Email (pkEmail)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.TaxReceipt
   FOREIGN KEY (fkServiceOrder)
       REFERENCES ServiceOrder (pkServiceOrder)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.TaxReceipt
   FOREIGN KEY (fkCity)
       REFERENCES City (pkCity)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.TaxReceipt
   FOREIGN KEY (pkServiceOrderCanceled)
       REFERENCES ServiceOrderCanceled (pkServiceOrderCanceled)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.TaxReceipt
   FOREIGN KEY (fkTaxReceiptCounterApproved)
       REFERENCES TaxReceiptCounterApproved (pkTaxReceiptCounterApproved)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.Balance
   FOREIGN KEY (fkCurrency)
       REFERENCES Currency (pkCurrency)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.Balance
   FOREIGN KEY (fkJuridicalPerson)
       REFERENCES JuridicalPerson (pkJuridicalPerson)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.Balance
   FOREIGN KEY (fkPerson)
       REFERENCES Person (pkPerson)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.ServiceOrderTax
   FOREIGN KEY (fkServiceOrder)
       REFERENCES ServiceOrder (pkServiceOrder)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.ServiceOrderTax
   FOREIGN KEY (fkTaxFormula)
       REFERENCES TaxFormula (pkTaxFormula)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.ServiceOrderTax
   FOREIGN KEY (fkTaxSetting)
       REFERENCES TaxSettings (pkTaxSettings)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.ServiceOrderTax
   FOREIGN KEY (fkTaxReceipt)
       REFERENCES TaxReceipt (pkTaxReceipt)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.TaxSettings
   FOREIGN KEY (fkCity)
       REFERENCES City (pkCity)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.TaxSettings
   FOREIGN KEY (fkScreenApproval)
       REFERENCES ScreenApproval (pkScreenApproval)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.TaxSettings
   FOREIGN KEY (fkCityAccount)
       REFERENCES CityAccount (pkCityAccount)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.TaxSettings
   FOREIGN KEY (fkCounter)
       REFERENCES Counter (pkCounter)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.TaxSettings
   FOREIGN KEY (fkUser)
       REFERENCES User (pkUser)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.TaxSettingAttachment
   FOREIGN KEY (fkTaxSetting)
       REFERENCES TaxSettings (pkTaxSettings)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.TaxSettingAttachment
   FOREIGN KEY (fkAttachment)
       REFERENCES Attachment (pkAttachment)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.UserAttachment
   FOREIGN KEY (fkAttachment)
       REFERENCES Attachment (pkAttachment)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.UserAttachment
   FOREIGN KEY (fkUser)
       REFERENCES User (pkUser)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.UserAttachment
   FOREIGN KEY (fkIdentificationDocument)
       REFERENCES IdentificationDocument (pkIdentificationDocument)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.TaxSettingsCategory
   FOREIGN KEY (fkTaxSettings)
       REFERENCES TaxSettings (pkTaxSettings)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.TaxSettingsCategory
   FOREIGN KEY (fkCategory)
       REFERENCES Category (pkCategory)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.ServiceTemplateContract
   FOREIGN KEY (fkCategoryContractTemplate)
       REFERENCES CategoryContractTemplate (pkCategoryContractTemplate)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.ServiceTemplateContract
   FOREIGN KEY (fkService)
       REFERENCES Service (pkService)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.ServiceTemplateContract
   FOREIGN KEY (fkTemplateAttachment)
       REFERENCES Attachment (pkAttachment)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.ServiceTemplateContract
   FOREIGN KEY (fkSignatureAttachment)
       REFERENCES Attachment (pkAttachment)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.UserSettings
   FOREIGN KEY (fkUser)
       REFERENCES User (pkUser)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.UserSettings
   FOREIGN KEY (fkSignatureAttachment)
       REFERENCES Attachment (pkAttachment)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.Approval
   FOREIGN KEY (fkUser)
       REFERENCES User (pkUser)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.Approval
   FOREIGN KEY (fkScreenApproval)
       REFERENCES ScreenApproval (pkScreenApproval)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.ScreenPermission
   FOREIGN KEY (fkScreen)
       REFERENCES Screen (pkScreen)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.ScreenPermission
   FOREIGN KEY (fkUser)
       REFERENCES User (pkUser)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.ScreenApproval
   FOREIGN KEY (fkScreen)
       REFERENCES Screen (pkScreen)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.ScreenApproval
   FOREIGN KEY (fkCountry)
       REFERENCES Country (pkCountry)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.PrepayTax
   FOREIGN KEY (fkUser)
       REFERENCES User (pkUser)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.PrepayTax
   FOREIGN KEY (fkPayment)
       REFERENCES Payment (pkPayment)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.PrepayTax
   FOREIGN KEY (fkBalanceItem)
       REFERENCES BalanceItem (pkBalanceItem)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.Payment
   FOREIGN KEY (fkCurrency)
       REFERENCES Currency (pkCurrency)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.Payment
   FOREIGN KEY (fkBalanceItem)
       REFERENCES BalanceItem (pkBalanceItem)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.Payment
   FOREIGN KEY (fkMainBankAccount)
       REFERENCES MainBankAccount (pkMainBankAccount)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.Bank
   FOREIGN KEY (fkCountry)
       REFERENCES Country (pkCountry)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.Bank
   FOREIGN KEY (fkJuridicalPerson)
       REFERENCES JuridicalPerson (pkJuridicalPerson)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.PaymentDebt
   FOREIGN KEY (fkPayment)
       REFERENCES Payment (pkPayment)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.PaymentDebt
   FOREIGN KEY (fkBankAccount)
       REFERENCES BankAccount (pkBankAccount)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.PaymentBill
   FOREIGN KEY (fkPayment)
       REFERENCES Payment (pkPayment)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.PaymentBill
   FOREIGN KEY (fkPerson)
       REFERENCES Person (pkPerson)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.BankAccount
   FOREIGN KEY (fkCurrency)
       REFERENCES Currency (pkCurrency)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.BankAccount
   FOREIGN KEY (fkJuridicalPerson)
       REFERENCES JuridicalPerson (pkJuridicalPerson)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.BankAccount
   FOREIGN KEY (fkPerson)
       REFERENCES Person (pkPerson)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.BankAccount
   FOREIGN KEY (fkBank)
       REFERENCES Bank (pkBank)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.BankAccount
   FOREIGN KEY (fkBankBranch)
       REFERENCES BankBranch (pkBankBranch)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.WithdrawMoney
   FOREIGN KEY (fkTransferMoney)
       REFERENCES TransferMoney (pkTransferMoney)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.WithdrawMoney
   FOREIGN KEY (fkUser)
       REFERENCES User (pkUser)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.WithdrawMoney
   FOREIGN KEY (fkScreenApproval)
       REFERENCES ScreenApproval (pkScreenApproval)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.Currency
   FOREIGN KEY (fkCountry)
       REFERENCES Country (pkCountry)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.Language
   FOREIGN KEY (fkCountry)
       REFERENCES Country (pkCountry)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.PaymentCredit
   FOREIGN KEY (fkPayment)
       REFERENCES Payment (pkPayment)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.PaymentCredit
   FOREIGN KEY (fkUserPaymentCreditCard)
       REFERENCES UserPaymentCreditCard (pkUserPaymentCreditCard)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.PaymentDigitalWallet
   FOREIGN KEY (fkPayment)
       REFERENCES Payment (pkPayment)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.PaymentDigitalWallet
   FOREIGN KEY (fkUserPaymentDigitalWallet)
       REFERENCES UserPaymentDigitalWallet (pkUserPaymentDigitalWallet)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.DigitalWallet
   FOREIGN KEY (fkCountry)
       REFERENCES Country (pkCountry)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.CreditCardBrand
   FOREIGN KEY (fkCountry)
       REFERENCES Country (pkCountry)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.MainBankAccount
   FOREIGN KEY (fkBalance)
       REFERENCES Balance (pkBalance)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.MainBankAccount
   FOREIGN KEY (fkBankAccount)
       REFERENCES BankAccount (pkBankAccount)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.MainBankAccount
   FOREIGN KEY (fkCountry)
       REFERENCES Country (pkCountry)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.MainBankAccount
   FOREIGN KEY (fkScreenApproval)
       REFERENCES ScreenApproval (pkScreenApproval)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.MainBankAccount
   FOREIGN KEY (fkUserCreator)
       REFERENCES User (pkUser)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.TransferMoney
   FOREIGN KEY (fkFromMainBankAccount)
       REFERENCES MainBankAccount (pkMainBankAccount)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.TransferMoney
   FOREIGN KEY (fkToBankAccount)
       REFERENCES BankAccount (pkBankAccount)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.TransferMoney
   FOREIGN KEY (fkCurrency)
       REFERENCES Currency (pkCurrency)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.TransferMoney
   FOREIGN KEY (fkBalanceItem)
       REFERENCES BalanceItem (pkBalanceItem)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.HelpCenterServicesTypes
   FOREIGN KEY (fkHelpCenterServicesTypes)
       REFERENCES HelpCenterServicesTypes (pkHelpCenterServicesTypes)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.HelpCenterMessages
   FOREIGN KEY (fkUser)
       REFERENCES User (pkUser)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.HelpCenterMessages
   FOREIGN KEY (fkUserCompany)
       REFERENCES User (pkUser)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.HelpCenterMessages
   FOREIGN KEY (fkHelpCenterAssistant)
       REFERENCES HelpCenterAssistant (pkHelpCenterAssistant)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.HelpCenterAssistant
   FOREIGN KEY (fkJuridicalPerson)
       REFERENCES JuridicalPerson (pkJuridicalPerson)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.HelpCenter
   FOREIGN KEY (fkContactPhone)
       REFERENCES Contact (pkContact)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.HelpCenter
   FOREIGN KEY (fkContactEmail)
       REFERENCES Contact (pkContact)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.HelpCenter
   FOREIGN KEY (fkHelpCenterServicesTypes)
       REFERENCES HelpCenterServicesTypes (pkHelpCenterServicesTypes)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.HelpCenter
   FOREIGN KEY (fkUser)
       REFERENCES User (pkUser)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.UserPaymentDigitalWallet
   FOREIGN KEY (fkDigitalWallet)
       REFERENCES DigitalWallet (pkDigitalWallet)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.UserPaymentDigitalWallet
   FOREIGN KEY (fkUserPayment)
       REFERENCES UserPayment (pkUserPayment)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.UserPaymentCreditCard
   FOREIGN KEY (fkCreditCardBrand)
       REFERENCES CreditCardBrand (pkCreditCardBrand)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.UserPaymentCreditCard
   FOREIGN KEY (fkUserPayment)
       REFERENCES UserPayment (pkUserPayment)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.UserPaymentCreditCard
   FOREIGN KEY (fkBillingAddress)
       REFERENCES Address (pkAddress)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.UserPaymentCreditCard
   FOREIGN KEY (pkShippingAddress)
       REFERENCES Address (pkAddress)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.ApprovalAttachment
   FOREIGN KEY (fkApproval)
       REFERENCES Approval (pkApproval)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.ApprovalAttachment
   FOREIGN KEY (fkAttachment)
       REFERENCES Attachment (pkAttachment)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.HelpCenterTypicalAsks
   FOREIGN KEY (fkHelpCenterTypicalAsks)
       REFERENCES HelpCenterTypicalAsks (pkHelpCenterTypicalAsks)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.HelpCenterTypicalAsks
   FOREIGN KEY (fkLanguage)
       REFERENCES Language (pkLanguage)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.HelpCenterService
   FOREIGN KEY (fkHelpCenter)
       REFERENCES HelpCenter (pkHelpCenter)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.HelpCenterService
   FOREIGN KEY (fkUser)
       REFERENCES User (pkUser)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.HelpCenterService
   FOREIGN KEY (fkEmail)
       REFERENCES Email (pkEmail)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.HelpCenterService
   FOREIGN KEY (fkSMS)
       REFERENCES SMS (pkSMS)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.EmailController
   FOREIGN KEY (fkCountry)
       REFERENCES Country (pkCountry)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.SMSController
   FOREIGN KEY (fkCountry)
       REFERENCES Country (pkCountry)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.Email
   FOREIGN KEY (fkEmailController)
       REFERENCES EmailController (pkEmailController)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.Email
   FOREIGN KEY (fkContact)
       REFERENCES Contact (pkContact)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.SMS
   FOREIGN KEY (fkSMSController)
       REFERENCES SMSController (pkSMSController)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.UserActivation
   FOREIGN KEY (fkUserLogin)
       REFERENCES UserLogin (pkUserLogin)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.UserActivation
   FOREIGN KEY (fkEmail)
       REFERENCES Email (pkEmail)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.UserActivation
   FOREIGN KEY (fkSMS)
       REFERENCES SMS (pkSMS)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.UserActivation
   FOREIGN KEY (fkUserTwoStepsVerification)
       REFERENCES UserTwoStepsVerification (pkUserTwoStepsVerification)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.UserLogin
   FOREIGN KEY (fkAddress)
       REFERENCES Address (pkAddress)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.UserLogin
   FOREIGN KEY (fkUser)
       REFERENCES User (pkUser)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.UserTwoStepsVerification
   FOREIGN KEY (fkUser)
       REFERENCES User (pkUser)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.Log
   FOREIGN KEY (fkCountry)
       REFERENCES Country (pkCountry)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.LogBackuped
   FOREIGN KEY (fkScreenApproval)
       REFERENCES ScreenApproval (pkScreenApproval)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.LogBackuped
   FOREIGN KEY (fkCountry)
       REFERENCES Country (pkCountry)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.LogBackuped
   FOREIGN KEY (fkUser)
       REFERENCES User (pkUser)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.CityAccount
   FOREIGN KEY (fkCity)
       REFERENCES City (pkCity)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.CityAccount
   FOREIGN KEY (fkBankAccount)
       REFERENCES BankAccount (pkBankAccount)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.CityAccount
   FOREIGN KEY (fkTax)
       REFERENCES Tax (pkTax)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.Counter
   FOREIGN KEY (fkJuridicalPerson)
       REFERENCES JuridicalPerson (pkJuridicalPerson)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.Counter
   FOREIGN KEY (fkPerson)
       REFERENCES Person (pkPerson)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.TaxFormula
   FOREIGN KEY (fkTax)
       REFERENCES Tax (pkTax)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.TaxFormula
   FOREIGN KEY (fkTaxSettings)
       REFERENCES TaxSettings (pkTaxSettings)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.TaxFormula
   FOREIGN KEY (fkTaxFormula)
       REFERENCES TaxFormula (pkTaxFormula)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.TaxFormula
   FOREIGN KEY (fkBankAccount)
       REFERENCES BankAccount (pkBankAccount)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.TaxFormula
   FOREIGN KEY (fkTaxSettingsCategory)
       REFERENCES TaxSettingsCategory (pkTaxSettingsCategory)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.TaxSettingsCounter
   FOREIGN KEY (fkTaxSettings)
       REFERENCES TaxSettings (pkTaxSettings)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.TaxSettingsCounter
   FOREIGN KEY (fkCounter)
       REFERENCES Counter (pkCounter)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.LoanMoney
   FOREIGN KEY (fkPerson)
       REFERENCES Person (pkPerson)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.LoanMoney
   FOREIGN KEY (fkJuridicalPerson)
       REFERENCES JuridicalPerson (pkJuridicalPerson)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.LoanMoney
   FOREIGN KEY (fkLoanMoneyRequest)
       REFERENCES LoanMoneyRequest (pkLoanMoneyRequest)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.LoanMoney
   FOREIGN KEY (fkPayment)
       REFERENCES Payment (pkPayment)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.LoanMoney
   FOREIGN KEY (fkCurrency)
       REFERENCES Currency (pkCurrency)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.LoanMoneyRequest
   FOREIGN KEY (fkJuridicalPerson)
       REFERENCES JuridicalPerson (pkJuridicalPerson)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.LoanMoneyRequest
   FOREIGN KEY (fkPerson)
       REFERENCES Person (pkPerson)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.LoanMoneyRequest
   FOREIGN KEY (fkLoanBankProgram)
       REFERENCES LoanBankProgram (pkLoanBankProgram)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.PaymentTransfer
   FOREIGN KEY (fkPayment)
       REFERENCES Payment (pkPayment)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.PaymentTransfer
   FOREIGN KEY (fkBankAccount)
       REFERENCES BankAccount (pkBankAccount)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.LoanBankProgram
   FOREIGN KEY (fkBank)
       REFERENCES Bank (pkBank)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.LoanBankProgram
   FOREIGN KEY (fkLoanBankProgramProfile)
       REFERENCES LoanBankProgramProfile (pkLoanBankProgramProfile)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.LoanBankProgram
   FOREIGN KEY (fkScreenApproval)
       REFERENCES ScreenApproval (pkScreenApproval)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.LoanBankProgramProfileCategory
   FOREIGN KEY (fkCategory)
       REFERENCES Category (pkCategory)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.LoanBankProgramProfileCategory
   FOREIGN KEY (fkLoanBankProgramProfile)
       REFERENCES LoanBankProgramProfile (pkLoanBankProgramProfile)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.BalanceBlocked
   FOREIGN KEY (fkLoanMoney)
       REFERENCES LoanMoney (pkLoanMoney)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.BalanceBlocked
   FOREIGN KEY (fkBalance)
       REFERENCES Balance (pkBalance)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.BankBranch
   FOREIGN KEY (fkBank)
       REFERENCES Bank (pkBank)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.BankBranch
   FOREIGN KEY (fkJuridicalPerson)
       REFERENCES JuridicalPerson (pkJuridicalPerson)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.LoanBankProgramProfileBranch
   FOREIGN KEY (fkLoanBankProgramProfile)
       REFERENCES LoanBankProgramProfile (pkLoanBankProgramProfile)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.LoanBankProgramProfileBranch
   FOREIGN KEY (fkBankBranch)
       REFERENCES BankBranch (pkBankBranch)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.PaymentBalance
   FOREIGN KEY (fkPayment)
       REFERENCES Payment (pkPayment)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.ServiceOrderCanceled
   FOREIGN KEY (pkServiceOrder)
       REFERENCES ServiceOrder (pkServiceOrder)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.ServiceOrderCanceled
   FOREIGN KEY (fkUser)
       REFERENCES User (pkUser)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.ServiceOrderRefund
   FOREIGN KEY (fkServiceOrderPayment)
       REFERENCES ServiceOrderPayment (pkServiceOrderPayment)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.ServiceOrderRefund
   FOREIGN KEY (fkServiceOrderCanceled)
       REFERENCES ServiceOrderCanceled (pkServiceOrderCanceled)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.ServiceOrderRefund
   FOREIGN KEY (fkRefound)
       REFERENCES Refound (pkRefound)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.ServiceOrderRefund
   FOREIGN KEY (fkRefoundFee)
       REFERENCES Refound (pkRefound)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.ServiceOrderAttachment
   FOREIGN KEY (fkServiceOrder)
       REFERENCES ServiceOrder (pkServiceOrder)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.ServiceOrderAttachment
   FOREIGN KEY (pkServiceContract)
       REFERENCES ServiceTemplateContract (pkServiceTemplateContract)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.ServiceOrderAttachment
   FOREIGN KEY (fkUser)
       REFERENCES User (pkUser)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.ServiceOrderAttachment
   FOREIGN KEY (fkAttachment)
       REFERENCES Attachment (pkAttachment)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.Refound
   FOREIGN KEY (fkBalanceItem)
       REFERENCES BalanceItem (pkBalanceItem)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.Refound
   FOREIGN KEY (fkBalanceBlocked)
       REFERENCES BalanceBlocked (pkBalanceBlocked)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.CategoryContractTemplate
   FOREIGN KEY (pkAttachment)
       REFERENCES Attachment (pkAttachment)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.FiscalModuleFunction
   FOREIGN KEY (fkFiscalModule)
       REFERENCES FiscalModule (pkFiscalModule)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.TaxReceiptFiscalModule
   FOREIGN KEY (fkFiscalModuleFunction)
       REFERENCES FiscalModuleFunction (pkFiscalModuleFunction)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.TaxReceiptFiscalModule
   FOREIGN KEY (fkTaxReceipt)
       REFERENCES TaxReceipt (pkTaxReceipt)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.TaxReceiptCanceled
   FOREIGN KEY (fkTaxReceipt)
       REFERENCES TaxReceipt (pkTaxReceipt)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.TaxReceiptCanceled
   FOREIGN KEY (fkFiscalModuleFunction)
       REFERENCES FiscalModuleFunction (pkFiscalModuleFunction)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.TaxReceiptCanceled
   FOREIGN KEY (fkTaxReceiptFiscalModule)
       REFERENCES TaxReceiptFiscalModule (pkTaxReceiptFiscalModule)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.IdentificationDocumentAttachment
   FOREIGN KEY (fkIdentificationDocument)
       REFERENCES IdentificationDocument (pkIdentificationDocument)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.IdentificationDocumentAttachment
   FOREIGN KEY (fkAttachment)
       REFERENCES Attachment (pkAttachment)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.Tax
   FOREIGN KEY (fkCountry)
       REFERENCES Country (pkCountry)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.TaxReceiptCounterApproved
   FOREIGN KEY (fkCounter)
       REFERENCES Counter (pkCounter)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.TaxReceiptCounterApproved
   FOREIGN KEY (fkAttachment)
       REFERENCES Attachment (pkAttachment)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.DepartmentOfFinance
   FOREIGN KEY (fkJuridicalPerson)
       REFERENCES JuridicalPerson (pkJuridicalPerson)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.DepartmentOfFinance
   FOREIGN KEY (fkResponsable)
       REFERENCES Person (pkPerson)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.DepartmentOfFinance
   FOREIGN KEY (fkAddress)
       REFERENCES Address (pkAddress)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.DepartmentOfFinance
   FOREIGN KEY (fkState)
       REFERENCES State (pkState)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.FiscalModule
   FOREIGN KEY (fkTaxSettings)
       REFERENCES TaxSettings (pkTaxSettings)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.FiscalModuleFunctionTag
   FOREIGN KEY (fkTagReference)
       REFERENCES TagReference (pkTagReference)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.FiscalModuleFunctionTag
   FOREIGN KEY (fkFiscalModuleFunctionTag)
       REFERENCES FiscalModuleFunctionTag (pkFiscalModuleFunctionTag)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.TagReference
   FOREIGN KEY (fkCountry)
       REFERENCES Country (pkCountry)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.LoanBankProgramContract
   FOREIGN KEY (fkTemplateContract)
       REFERENCES Attachment (pkAttachment)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.LoanBankProgramContract
   FOREIGN KEY (fkLoanBankProgram)
       REFERENCES LoanBankProgram (pkLoanBankProgram)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.LoanBankProgramApproval
   FOREIGN KEY (fkApproval)
       REFERENCES Approval (pkApproval)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.LoanBankProgramApproval
   FOREIGN KEY (fkLoanBankProgram)
       REFERENCES LoanBankProgram (pkLoanBankProgram)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.LogBackupedApproval
   FOREIGN KEY (fkLogBackuped)
       REFERENCES LogBackuped (pkLogBackuped)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.LogBackupedApproval
   FOREIGN KEY (fkApproval)
       REFERENCES Approval (pkApproval)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.MainBankAccountApproval
   FOREIGN KEY (fkMainBankAccount)
       REFERENCES MainBankAccount (pkMainBankAccount)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.MainBankAccountApproval
   FOREIGN KEY (fkApproval)
       REFERENCES Approval (pkApproval)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.TaxReceiptCounterPayment
   FOREIGN KEY (fkTaxReceiptCounterApproved)
       REFERENCES TaxReceiptCounterApproved (pkTaxReceiptCounterApproved)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.TaxReceiptCounterPayment
   FOREIGN KEY (fkTransferMoney)
       REFERENCES TransferMoney (pkTransferMoney)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.TaxReceiptCounterPayment
   FOREIGN KEY (fkTaxReceiptCounterFee)
       REFERENCES TaxReceiptCounterFee (pkTaxReceiptCounterFee)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.TaxReceiptCounterFee
   FOREIGN KEY (pkTaxReceiptCounterApproved)
       REFERENCES TaxReceiptCounterApproved (pkTaxReceiptCounterApproved)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.TaxReceiptCounterFee
   FOREIGN KEY (pkTaxSettingsCounter)
       REFERENCES TaxSettingsCounter (pkTaxSettingsCounter)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.TaxReceiptCounterFee
   FOREIGN KEY (fkBalanceItem)
       REFERENCES BalanceItem (pkBalanceItem)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.BalanceItem
   FOREIGN KEY (fkBalance)
       REFERENCES Balance (pkBalance)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.BalanceItem
   FOREIGN KEY (fkBalanceOrigin)
       REFERENCES Balance (pkBalance)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.BalanceItem
   FOREIGN KEY (fkBalanceBlocked)
       REFERENCES BalanceBlocked (pkBalanceBlocked)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.WithdrawMoneyApproval
   FOREIGN KEY (fkApproval)
       REFERENCES Approval (pkApproval)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.WithdrawMoneyApproval
   FOREIGN KEY (fkWithdrawMoney)
       REFERENCES WithdrawMoney (pkWithdrawMoney)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.TaxSettingsApproval
   FOREIGN KEY (fkTaxSettings)
       REFERENCES TaxSettings (pkTaxSettings)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.TaxSettingsApproval
   FOREIGN KEY (fkApproval)
       REFERENCES Approval (pkApproval)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.FinancialModule
   FOREIGN KEY (fkMainBankAccount)
       REFERENCES MainBankAccount (pkMainBankAccount)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.FinancialModule
   FOREIGN KEY (fkLogo)
       REFERENCES Attachment (pkAttachment)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.FinancialModule
   FOREIGN KEY (fkScreenApproval)
       REFERENCES ScreenApproval (pkScreenApproval)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.FinancialModule
   FOREIGN KEY (fkUser)
       REFERENCES User (pkUser)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.FinancialModuleFunction
   FOREIGN KEY (fkFinancialModule)
       REFERENCES FinancialModule (pkFinancialModule)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.FinanceModuleApproval
   FOREIGN KEY (fkFinancialModule)
       REFERENCES FinancialModule (pkFinancialModule)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.FinanceModuleApproval
   FOREIGN KEY (fkApproval)
       REFERENCES Approval (pkApproval)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.Bill
   FOREIGN KEY (fkPaymentBill)
       REFERENCES PaymentBill (pkPaymentBill)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.Bill
   FOREIGN KEY (fkBankAccount)
       REFERENCES BankAccount (pkBankAccount)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.Bill
   FOREIGN KEY (pkCurrency)
       REFERENCES Currency (pkCurrency)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.Bill
   FOREIGN KEY (fkJuridicalPerson)
       REFERENCES JuridicalPerson (pkJuridicalPerson)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.Bill
   FOREIGN KEY (fkPerson)
       REFERENCES Person (pkPerson)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.Bill
   FOREIGN KEY (fkAttachment)
       REFERENCES Attachment (pkAttachment)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.Bill
   FOREIGN KEY (fkBalanceItemFee)
       REFERENCES BalanceItem (pkBalanceItem)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.BillFinancialModuleFunction
   FOREIGN KEY (fkBill)
       REFERENCES Bill (pkBill)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.BillFinancialModuleFunction
   FOREIGN KEY (fkFinancialModuleFunction)
       REFERENCES FinancialModuleFunction (pkFinancialModuleFunction)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.BillFinancialModuleFunction
   FOREIGN KEY (fkAttachment)
       REFERENCES Attachment (pkAttachment)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.UserPaymentBankAccount
   FOREIGN KEY (fkUserPayment)
       REFERENCES UserPayment (pkUserPayment)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.UserPaymentBankAccount
   FOREIGN KEY (fkBankAccount)
       REFERENCES BankAccount (pkBankAccount)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.CreditCardFinancialModuleFunction
   FOREIGN KEY (fkFinancialModuleFunction)
       REFERENCES FinancialModuleFunction (pkFinancialModuleFunction)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.CreditCardFinancialModuleFunction
   FOREIGN KEY (fkPaymentCredit)
       REFERENCES PaymentCredit (pkPaymentCredit)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.FinancialModuleTermsOfService
   FOREIGN KEY (fkFinancialModule)
       REFERENCES FinancialModule (pkFinancialModule)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.FinancialModuleTermsOfService
   FOREIGN KEY (fkAttachment)
       REFERENCES Attachment (pkAttachment)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.ServiceImage
   FOREIGN KEY (fkAttachment)
       REFERENCES Attachment (pkAttachment)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

ALTER TABLE SVZ98608.ServiceImage
   FOREIGN KEY (fkService)
       REFERENCES Service (pkService)
           ON UPDATE RESTRICT
           ON DELETE CASCADE;

-------------------------------FOREIGN KEY--------------------------------

