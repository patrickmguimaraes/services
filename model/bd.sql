
        
CREATE TABLE Address
(
  pkAddress         BIGINT  NOT NULL,
  type              INT     NOT NULL DEFAULT 1,
  street            VARCHAR NOT NULL,
  number            VARCHAR NOT NULL,
  neighborhood      VARCHAR NOT NULL,
  zipCode           VARCHAR NULL    ,
  status            INT     NOT NULL DEFAULT 0,
  fkPerson          BIGINT  NULL    ,
  fkJuridicalPerson BIGINT  NULL    ,
  fkCity            BIGINT  NOT NULL,
  PRIMARY KEY (pkAddress)
);

CREATE TABLE Appointment
(
  pkAppointment BIGINT  NOT NULL,
  number        VARCHAR NOT NULL,
  cost          REAL    NOT NULL,
  discount      REAL    NOT NULL DEFAULT 0,
  date          DATE    NOT NULL,
  status        INT     NOT NULL DEFAULT 0,
  fkUser        BIGINT  NOT NULL,
  PRIMARY KEY (pkAppointment)
);

CREATE TABLE Approval
(
  pkApproval        BIGINT   NOT NULL,
  observation       TEXT     NOT NULL,
  date              DATETIME NOT NULL,
  status            INT      NOT NULL DEFAULT 0,
  fkUser            BIGINT   NOT NULL,
  fkScreenApproval  BIGINT   NOT NULL,
  fkTaxSettings     BIGINT   NULL    ,
  fkWithdrawMoney   BIGINT   NULL    ,
  fkMainBankAccount BIGINT   NULL    ,
  fkLogBackuped     BIGINT   NULL    ,
  PRIMARY KEY (pkApproval)
);

CREATE TABLE ApprovalAttachment
(
  pkApprovalAttachment BIGINT NOT NULL,
  status               INT    NOT NULL DEFAULT 0,
  fkApproval           BIGINT NOT NULL,
  fkAttachment         BIGINT NOT NULL,
  PRIMARY KEY (pkApprovalAttachment)
);

CREATE TABLE Attachment
(
  pkAttachment BIGINT   NOT NULL,
  name         VARCHAR  NOT NULL,
  date         DATETIME NOT NULL,
  type         VARCHAR  NOT NULL,
  path         VARCHAR  NOT NULL,
  status       INT      NOT NULL DEFAULT 0,
  PRIMARY KEY (pkAttachment)
);

CREATE TABLE Balance
(
  pkBalance         BIGINT   NOT NULL,
  value             REAL     NOT NULL,
  consolidatedValue REAL     NULL    ,
  consolidatedDate  DATETIME NULL    ,
  status            INT      NOT NULL DEFAULT 0,
  fkJuridicalPerson BIGINT   NULL    ,
  fkPerson          BIGINT   NULL    ,
  fkCurrency        BIGINT   NOT NULL,
  PRIMARY KEY (pkBalance)
);

CREATE TABLE BalanceBlocked
(
  pkBalanceBlocked BIGINT  NOT NULL,
  note             VARCHAR NOT NULL,
  value            REAL    NOT NULL,
  status           INT     NOT NULL DEFAULT 0,
  fkLoanMoney      BIGINT  NOT NULL,
  fkBalance        BIGINT  NOT NULL,
  PRIMARY KEY (pkBalanceBlocked)
);

CREATE TABLE Bank
(
  pkBank            BIGINT  NOT NULL,
  name              VARCHAR NOT NULL,
  code              VARCHAR NOT NULL,
  status            INT     NOT NULL DEFAULT 0,
  fkCountry         BIGINT  NULL    ,
  fkJuridicalPerson BIGINT  NULL    ,
  PRIMARY KEY (pkBank)
);

CREATE TABLE BankAccount
(
  pkBankAccount     BIGINT  NOT NULL,
  branch            VARCHAR NOT NULL,
  account           VARCHAR NOT NULL,
  validatedAccount  DATE    NULL    ,
  status            INT     NOT NULL DEFAULT 0,
  fkCurrency        BIGINT  NOT NULL,
  fkJuridicalPerson BIGINT  NULL    ,
  fkPerson          BIGINT  NULL    ,
  fkUserPayment     BIGINT  NULL    ,
  fkBank            BIGINT  NOT NULL,
  fkBankBranch      BIGINT  NULL    ,
  PRIMARY KEY (pkBankAccount)
);

CREATE TABLE BankBranch
(
  pkBankBranch      BIGINT  NOT NULL,
  branch            VARCHAR NULL    ,
  fkBank            BIGINT  NULL    ,
  fkJuridicalPerson BIGINT  NULL    ,
  PRIMARY KEY (pkBankBranch)
);

CREATE TABLE Category
(
  pkCategory BIGINT  NOT NULL,
  name       VARCHAR NOT NULL,
  code       VARCHAR NULL    ,
  status     INT     NOT NULL DEFAULT 0,
  fkCategory BIGINT  NULL    ,
  fkCountry  BIGINT  NULL    ,
  PRIMARY KEY (pkCategory)
);

CREATE TABLE CategoryContractTemplate
(
  pkCategoryContractTemplate BIGINT NOT NULL,
  pkAttachment               BIGINT NULL    ,
  PRIMARY KEY (pkCategoryContractTemplate)
);

CREATE TABLE City
(
  pkCity                BIGINT  NOT NULL,
  name                  VARCHAR NOT NULL,
  abbreviation          VARCHAR NOT NULL,
  status                INT     NOT NULL DEFAULT 0,
  fkState               BIGINT  NOT NULL,
  fkDepartmentOfFinance BIGINT  NULL    ,
  fkBalance             BIGINT  NULL    ,
  PRIMARY KEY (pkCity)
);

CREATE TABLE CityAccount
(
  pkCityAccount BIGINT NOT NULL,
  status        INT    NOT NULL DEFAULT 0,
  fkCity        BIGINT NOT NULL,
  fkBankAccount BIGINT NOT NULL,
  fkTax         BIGINT NOT NULL,
  PRIMARY KEY (pkCityAccount)
);

CREATE TABLE Contact
(
  pkContact         BIGINT  NOT NULL,
  type              VARCHAR NOT NULL,
  value             VARCHAR NOT NULL,
  expirationDate    DATE    NULL    ,
  status            INT     NOT NULL DEFAULT 0,
  fkPerson          BIGINT  NULL    ,
  fkJuridicalPerson BIGINT  NULL    ,
  PRIMARY KEY (pkContact)
);

CREATE TABLE Counter
(
  pkCounter         BIGINT NOT NULL,
  dateApproved      DATE   NULL    ,
  status            INT    NOT NULL DEFAULT 0,
  fkJuridicalPerson BIGINT NOT NULL,
  fkPerson          BIGINT NULL    ,
  PRIMARY KEY (pkCounter)
);

CREATE TABLE Country
(
  pkCountry    BIGINT  NOT NULL,
  name         VARCHAR NOT NULL,
  abbreviation VARCHAR NOT NULL,
  status       INT     NOT NULL DEFAULT 0,
  fkLanguage   BIGINT  NOT NULL,
  PRIMARY KEY (pkCountry)
);

CREATE TABLE CreditCardBrand
(
  pkCreditCardBrand BIGINT  NOT NULL,
  name              VARCHAR NOT NULL,
  code              VARCHAR NOT NULL,
  status            INT     NOT NULL,
  fkCountry         BIGINT  NULL    ,
  PRIMARY KEY (pkCreditCardBrand)
);

CREATE TABLE Currency
(
  pkCurrency BIGINT  NOT NULL,
  name       VARCHAR NOT NULL,
  code       VARCHAR NOT NULL,
  symbol     VARCHAR NOT NULL,
  status     INT     NOT NULL,
  fkCountry  BIGINT  NULL    ,
  PRIMARY KEY (pkCurrency)
);

CREATE TABLE DepartmentOfFinance
(
  pkDepartmentOfFinance BIGINT NOT NULL,
  region                       NULL    ,
  status                INT    NOT NULL,
  fkJuridicalPerson     BIGINT NOT NULL,
  fkResponsable         BIGINT NOT NULL,
  fkAddress             BIGINT NOT NULL,
  fkState               BIGINT NOT NULL,
  PRIMARY KEY (pkDepartmentOfFinance)
);

CREATE TABLE DigitalWallet
(
  pkDigitalWallet BIGINT  NOT NULL,
  name            VARCHAR NOT NULL,
  code            VARCHAR NOT NULL,
  status          INT     NOT NULL,
  fkCountry       BIGINT  NULL    ,
  PRIMARY KEY (pkDigitalWallet)
);

CREATE TABLE Email
(
  pkEmail           BIGINT  NOT NULL,
  subject           VARCHAR NOT NULL,
  emailText         TEXT    NOT NULL,
  fkEmailController BIGINT  NULL    ,
  fkContact         BIGINT  NULL    ,
  PRIMARY KEY (pkEmail)
);

CREATE TABLE EmailController
(
  pkEmailController BIGINT  NOT NULL,
  type              INT     NOT NULL DEFAULT 1,
  imap              VARCHAR NOT NULL,
  smtp              VARCHAR NOT NULL,
  fullName          VARCHAR NOT NULL,
  email             VARCHAR NOT NULL,
  password          VARCHAR NOT NULL,
  status            INT     NOT NULL DEFAULT 0,
  fkCountry         BIGINT  NOT NULL,
  PRIMARY KEY (pkEmailController)
);

CREATE TABLE Employee
(
  pkEmployee        BIGINT  NOT NULL,
  profession        VARCHAR NOT NULL,
  status            INT     NOT NULL DEFAULT 0,
  fkPerson          BIGINT  NOT NULL,
  fkJuridicalPerson BIGINT  NOT NULL,
  PRIMARY KEY (pkEmployee)
);

CREATE TABLE EmployeeResponsibility
(
  pkEmployeeResponsibility BIGINT   NOT NULL,
  position                 VARCHAR  NOT NULL,
  salary                   REAL     NOT NULL,
  commission               REAL     NOT NULL,
  beginning                DATETIME NOT NULL,
  end                      DATETIME NULL    ,
  status                   INT      NOT NULL DEFAULT 0,
  fkEmployee               BIGINT   NOT NULL,
  PRIMARY KEY (pkEmployeeResponsibility)
);

CREATE TABLE FiscalModule
(
  pkFiscalModule BIGINT  NOT NULL,
  code           VARCHAR NOT NULL,
  url            TEXT    NOT NULL,
  status         INT     NOT NULL DEFAULT 0,
  fkTaxSettings  BIGINT  NOT NULL,
  PRIMARY KEY (pkFiscalModule)
);

CREATE TABLE FiscalModuleFunction
(
  pkFiscalModuleFunction BIGINT  NOT NULL,
  name                   VARCHAR NOT NULL,
  code                   VARCHAR NOT NULL,
  url                    TEXT    NOT NULL,
  template               TEXT    NOT NULL,
  status                 INT     NOT NULL DEFAULT 0,
  fkFiscalModule         BIGINT  NOT NULL,
  PRIMARY KEY (pkFiscalModuleFunction)
);

CREATE TABLE FiscalModuleFunctionTag
(
  pkFiscalModuleFunctionTag BIGINT  NOT NULL,
  sequence                  INT     NOT NULL DEFAULT 1,
  tag                       VARCHAR NULL    ,
  value                     TEXT    NULL    ,
  length                    INT     NULL    ,
  completeWithZeroRight     BOOLEAN NOT NULL DEFAULT false,
  completeWithZeroLeft      BOOLEAN NOT NULL DEFAULT false,
  status                    INT     NOT NULL DEFAULT 0,
  fkTagReference            BIGINT  NOT NULL,
  fkFiscalModuleFunctionTag BIGINT  NULL    ,
  PRIMARY KEY (pkFiscalModuleFunctionTag)
);

CREATE TABLE HelpCenter
(
  pkHelpCenter              BIGINT   NOT NULL,
  number                    INT      NOT NULL DEFAULT 1,
  protocol                  VARCHAR  NOT NULL,
  date                      DATETIME NOT NULL,
  message                   TEXT     NOT NULL,
  status                    INT      NOT NULL DEFAULT 0,
  fkContactPhone            BIGINT   NULL    ,
  fkContactEmail            BIGINT   NULL    ,
  fkHelpCenterServicesTypes BIGINT   NOT NULL,
  fkUser                    BIGINT   NOT NULL,
  PRIMARY KEY (pkHelpCenter)
);

CREATE TABLE HelpCenterAssistant
(
  pkHelpCenterAssistant BIGINT NOT NULL,
  status                INT    NOT NULL DEFAULT 0,
  fkJuridicalPerson     BIGINT NOT NULL,
  PRIMARY KEY (pkHelpCenterAssistant)
);

CREATE TABLE HelpCenterMessages
(
  pkHelpCenterMessages  BIGINT   NOT NULL,
  message               TEXT     NOT NULL,
  date                  DATETIME NOT NULL,
  status                INT      NOT NULL,
  fkUser                BIGINT   NOT NULL,
  fkUserCompany         BIGINT   NULL    ,
  fkHelpCenterAssistant BIGINT   NULL    ,
  PRIMARY KEY (pkHelpCenterMessages)
);

CREATE TABLE HelpCenterService
(
  pkHelpCenterService BIGINT   NOT NULL,
  date                DATETIME NOT NULL,
  message             TEXT     NOT NULL,
  status              INT      NOT NULL DEFAULT 0,
  fkHelpCenter        BIGINT   NOT NULL,
  fkUser              BIGINT   NOT NULL,
  pkSMS               BIGINT   NULL    ,
  fkEmail             BIGINT   NULL    ,
  fkSMS               BIGINT   NULL    ,
  PRIMARY KEY (pkHelpCenterService)
);

CREATE TABLE HelpCenterServicesTypes
(
  pkHelpCenterServicesTypes BIGINT  NOT NULL,
  name                      VARCHAR NOT NULL,
  type                      INT     NOT NULL DEFAULT 1,
  status                    INT     NOT NULL DEFAULT 0,
  fkHelpCenterServicesTypes BIGINT  NULL    ,
  PRIMARY KEY (pkHelpCenterServicesTypes)
);

CREATE TABLE HelpCenterTypicalAsks
(
  pkHelpCenterTypicalAsks BIGINT  NOT NULL,
  number                  INT     NULL    ,
  ask                     VARCHAR NOT NULL,
  answer                  TEXT    NOT NULL,
  fkHelpCenterTypicalAsks BIGINT  NULL    ,
  fkLanguage              BIGINT  NOT NULL,
  PRIMARY KEY (pkHelpCenterTypicalAsks)
);

CREATE TABLE IdentificationDocument
(
  pkIdentificationDocument BIGINT  NOT NULL,
  type                     VARCHAR NOT NULL,
  value                    VARCHAR NOT NULL,
  dateOfIssue              DATE    NULL    ,
  dateOfExpiration         DATE    NULL    ,
  status                   INT     NOT NULL DEFAULT 0,
  fkPerson                 BIGINT  NULL    ,
  fkJuridicalPerson        BIGINT  NULL    ,
  fkState                  BIGINT  NULL    ,
  fkCountry                BIGINT  NULL    ,
  PRIMARY KEY (pkIdentificationDocument)
);

CREATE TABLE IdentificationDocumentAttachment
(
  pkIdentificationDocumentAttachment BIGINT NOT NULL,
  status                             INT    NOT NULL DEFAULT 0,
  fkIdentificationDocument           BIGINT NULL    ,
  fkAttachment                       BIGINT NULL    ,
  PRIMARY KEY (pkIdentificationDocumentAttachment)
);

CREATE TABLE JuridicalPerson
(
  pkJuridicalPerson BIGINT  NOT NULL,
  name              VARCHAR NOT NULL,
  socialReason      VARCHAR NOT NULL,
  openedDate        DATE    NOT NULL,
  companyType       INT     NOT NULL DEFAULT 1,
  legalStructure    INT     NOT NULL DEFAULT 1,
  fkOriginCountry   BIGINT  NULL    ,
  PRIMARY KEY (pkJuridicalPerson)
);

CREATE TABLE Language
(
  pkLanguage BIGINT  NOT NULL,
  name       VARCHAR NOT NULL,
  status     INT     NOT NULL DEFAULT 0,
  fkCountry  BIGINT  NULL    ,
  PRIMARY KEY (pkLanguage)
);

CREATE TABLE LoanBankProgram
(
  pkLoanBankAssociated     BIGINT   NOT NULL,
  name                     VARCHAR  NOT NULL,
  beginning                DATETIME NOT NULL,
  end                      DATETIME NOT NULL,
  interestRate             REAL     NOT NULL,
  status                   INT      NOT NULL DEFAULT 0,
  fkBank                   BIGINT   NOT NULL,
  fkLoanBankProgramProfile BIGINT   NULL    ,
  PRIMARY KEY (pkLoanBankAssociated)
);

CREATE TABLE LoanBankProgramProfile
(
  pkLoanBankProgramProfile BIGINT  NOT NULL,
  forCompany               BOOLEAN NOT NULL DEFAULT false,
  minimumMonths            INT     NOT NULL,
  maximumMonths            INT     NOT NULL,
  minimumSpend             REAL    NULL    ,
  minimumSpendSinceDate    DATE    NULL    ,
  status                   INT     NOT NULL DEFAULT 0,
  PRIMARY KEY (pkLoanBankProgramProfile)
);

CREATE TABLE LoanBankProgramProfileBranch
(
  pkLoanBankProgramProfileBranch BIGINT NOT NULL,
  status                         INT    NOT NULL DEFAULT 0,
  fkLoanBankProgramProfile       BIGINT NULL    ,
  fkBankBranch                   BIGINT NULL    ,
  PRIMARY KEY (pkLoanBankProgramProfileBranch)
);

CREATE TABLE LoanBankProgramProfileCategory
(
  pkLoanBankProgramProfileCategory BIGINT NOT NULL,
  status                           INT    NULL    ,
  fkCategory                       BIGINT NOT NULL,
  fkLoanBankProgramProfile         BIGINT NOT NULL,
  PRIMARY KEY (pkLoanBankProgramProfileCategory)
);

CREATE TABLE LoanMoney
(
  pkLoanMoney        BIGINT   NOT NULL,
  value              REAL     NOT NULL,
  date               DATETIME NOT NULL,
  status             INT      NOT NULL,
  fkPerson           BIGINT   NULL    ,
  fkJuridicalPerson  BIGINT   NULL    ,
  fkLoanMoneyRequest BIGINT   NOT NULL,
  fkPayment          BIGINT   NULL    ,
  fkCurrency         BIGINT   NULL    ,
  PRIMARY KEY (pkLoanMoney)
);

CREATE TABLE LoanMoneyRequest
(
  pkLoanMoneyRequest BIGINT   NOT NULL,
  value              REAL     NOT NULL,
  months             INT      NOT NULL,
  date               DATETIME NOT NULL,
  status             INT      NOT NULL DEFAULT 0,
  fkJuridicalPerson  BIGINT   NULL    ,
  fkPerson           BIGINT   NULL    ,
  fkLoanBankProgram  BIGINT   NOT NULL,
  PRIMARY KEY (pkLoanMoneyRequest)
);

CREATE TABLE Log
(
  pkLog     BIGINT   NOT NULL,
  type      INT      NOT NULL,
  title     VARCHAR  NOT NULL,
  message   TEXT     NOT NULL,
  date      DATETIME NOT NULL,
  fkCountry BIGINT   NOT NULL,
  PRIMARY KEY (pkLog)
);

CREATE TABLE LogBackuped
(
  pkLogBackuped    BIGINT   NOT NULL,
  path             VARCHAR  NOT NULL,
  date             DATETIME NULL    ,
  status           INT      NOT NULL DEFAULT 0,
  fkScreenApproval BIGINT   NOT NULL,
  fkCountry        BIGINT   NOT NULL,
  PRIMARY KEY (pkLogBackuped)
);

CREATE TABLE MainBankAccount
(
  pkMainBankAccount BIGINT NOT NULL,
  balance           REAL   NOT NULL,
  status            INT    NOT NULL DEFAULT 0,
  fkBankAccount     BIGINT NOT NULL,
  fkCountry         BIGINT NOT NULL,
  fkScreenApproval  BIGINT NOT NULL,
  PRIMARY KEY (pkMainBankAccount)
);

CREATE TABLE Payment
(
  pkPayment         BIGINT   NOT NULL,
  type              INT      NOT NULL DEFAULT 1,
  date              DATETIME NOT NULL,
  value             REAL     NOT NULL,
  note              VARCHAR  NULL    ,
  status            INT      NOT NULL DEFAULT 0,
  fkCurrency        BIGINT   NOT NULL,
  fkMainBankAccount BIGINT   NOT NULL,
  fkUserPayment     BIGINT   NULL    ,
  PRIMARY KEY (pkPayment)
);

CREATE TABLE PaymentBalance
(
  pkPaymentBalance BIGINT NOT NULL,
  status           INT    NOT NULL DEFAULT 0,
  fkPayment        BIGINT NOT NULL,
  fkBalanceBlocked BIGINT NOT NULL,
  PRIMARY KEY (pkPaymentBalance)
);

CREATE TABLE PaymentBill
(
  pkPaymentBill BIGINT  NOT NULL,
  code          VARCHAR NULL    ,
  dateOfExpire  DATE    NULL    ,
  status        INT     NOT NULL DEFAULT 0,
  fkPayment     BIGINT  NOT NULL,
  fkPerson      BIGINT  NOT NULL,
  PRIMARY KEY (pkPaymentBill)
);

CREATE TABLE PaymentCredit
(
  pkPaymentCredit         BIGINT NOT NULL,
  status                  INT    NOT NULL DEFAULT 0,
  fkPayment               BIGINT NOT NULL,
  fkUserPaymentCreditCard BIGINT NOT NULL,
  PRIMARY KEY (pkPaymentCredit)
);

CREATE TABLE PaymentDebt
(
  pkPaymentDebt BIGINT NOT NULL,
  status        INT    NOT NULL DEFAULT 0,
  fkPayment     BIGINT NOT NULL,
  fkBankAccount BIGINT NOT NULL,
  PRIMARY KEY (pkPaymentDebt)
);

CREATE TABLE PaymentDigitalWallet
(
  pkPaymentDigitalWallet     BIGINT NOT NULL,
  status                     INT    NOT NULL DEFAULT 0,
  fkPayment                  BIGINT NULL    ,
  fkUserPaymentDigitalWallet BIGINT NULL    ,
  PRIMARY KEY (pkPaymentDigitalWallet)
);

CREATE TABLE PaymentTransfer
(
  pkPaymentTransfer BIGINT NOT NULL,
  status            INT    NOT NULL DEFAULT 0,
  fkPayment         BIGINT NULL    ,
  fkBankAccount     BIGINT NULL    ,
  PRIMARY KEY (pkPaymentTransfer)
);

CREATE TABLE Person
(
  pkPerson       BIGINT  NOT NULL,
  name           VARCHAR NOT NULL,
  lastName       VARCHAR NOT NULL,
  bithday        DATE    NOT NULL,
  maritalStatus  INT     NOT NULL,
  status         INT     NOT NULL DEFAULT 0,
  fkBirthCountry BIGINT  NOT NULL,
  PRIMARY KEY (pkPerson)
);

CREATE TABLE PrepayTax
(
  pkPrepayTax BIGINT NOT NULL,
  value       REAL   NOT NULL,
  status      INT    NOT NULL DEFAULT 0,
  fkBalance   BIGINT NOT NULL,
  fkPayment   BIGINT NOT NULL,
  fkUser      BIGINT NOT NULL,
  PRIMARY KEY (pkPrepayTax)
);

CREATE TABLE Refound
(
  pkRefound           BIGINT   NOT NULL,
  note                VARCHAR  NOT NULL,
  value               REAL     NOT NULL,
  date                DATETIME NOT NULL,
  fkBalance           BIGINT   NULL    ,
  fkBalanceBlocked    BIGINT   NULL    ,
  fkBalanceRefoundFee BIGINT   NULL    ,
  PRIMARY KEY (pkRefound)
);

CREATE TABLE Screen
(
  pkScreen BIGINT  NOT NULL,
  id       INT     NOT NULL,
  name     VARCHAR NOT NULL,
  path     VARCHAR NOT NULL,
  status   INT     NOT NULL DEFAULT 0,
  PRIMARY KEY (pkScreen)
);

CREATE TABLE ScreenApproval
(
  pkScreenApproval BIGINT  NOT NULL,
  pathComplement   VARCHAR NULL    ,
  status           INT     NOT NULL DEFAULT 0,
  fkScreen         BIGINT  NOT NULL,
  fkCountry        BIGINT  NULL    ,
  PRIMARY KEY (pkScreenApproval)
);

CREATE TABLE ScreenPermission
(
  pkPermissionPermission BIGINT NOT NULL,
  permission             INT    NOT NULL DEFAULT 1,
  status                 INT    NOT NULL DEFAULT 0,
  fkScreen               BIGINT NOT NULL,
  fkUser                 BIGINT NOT NULL,
  PRIMARY KEY (pkPermissionPermission)
);

CREATE TABLE Service
(
  pkService                BIGINT  NOT NULL,
  cost                     REAL    NOT NULL,
  time                     INT     NOT NULL,
  discountRate             REAL    NOT NULL DEFAULT 0,
  cancelRate               REAL    NOT NULL DEFAULT 0,
  withContract             BOOLEAN NOT NULL DEFAULT false,
  status                   INT     NOT NULL DEFAULT 0,
  fkEmployeeResponsibility BIGINT  NULL    ,
  fkAddress                BIGINT  NULL    ,
  fkServiceCategory        BIGINT  NOT NULL,
  fkJuridicalPerson        BIGINT  NULL    ,
  PRIMARY KEY (pkService)
);

CREATE TABLE ServiceAppointment
(
  pkServiceAppointment BIGINT   NOT NULL,
  beginning            DATETIME NULL    ,
  end                  DATETIME NULL    ,
  status               INT      NOT NULL DEFAULT 0,
  fkService            BIGINT   NOT NULL,
  fkAppointment        BIGINT   NOT NULL,
  PRIMARY KEY (pkServiceAppointment)
);

CREATE TABLE ServiceCategory
(
  pkServiceCategory BIGINT  NOT NULL,
  name              VARCHAR NOT NULL,
  status            INT     NOT NULL DEFAULT 0,
  fkCategory        BIGINT  NULL    ,
  PRIMARY KEY (pkServiceCategory)
);

CREATE TABLE ServiceOrder
(
  pkServiceOrder    BIGINT   NOT NULL,
  code              VARCHAR  NOT NULL,
  date              DATETIME NOT NULL,
  cost              REAL     NOT NULL,
  discount          REAL     NOT NULL DEFAULT 0,
  fee               REAL     NOT NULL DEFAULT 0,
  total             REAL     NOT NULL,
  primaryPayment    INT      NOT NULL DEFAULT 1,
  status            INT      NOT NULL DEFAULT 0,
  fkAppointment     BIGINT   NOT NULL,
  fkJuridicalPerson BIGINT   NOT NULL,
  fkCurrency        BIGINT   NOT NULL,
  fkPerson          BIGINT   NULL    ,
  fkAddress         BIGINT   NULL    ,
  PRIMARY KEY (pkServiceOrder)
);

CREATE TABLE ServiceOrderAttachment
(
  pkServiceOrderAttachment BIGINT NOT NULL,
  status                   INT    NOT NULL DEFAULT 0,
  fkServiceOrder           BIGINT NOT NULL,
  pkServiceContract        BIGINT NULL    ,
  fkUser                   BIGINT NULL    ,
  fkAttachment             BIGINT NULL    ,
  PRIMARY KEY (pkServiceOrderAttachment)
);

CREATE TABLE ServiceOrderCanceled
(
  pkServiceOrderCanceled BIGINT   NOT NULL,
  date                   DATETIME NULL    ,
  detail                 TEXT     NOT NULL,
  status                 INT      NOT NULL DEFAULT 0,
  pkServiceOrder         BIGINT   NOT NULL,
  fkUser                 BIGINT   NOT NULL,
  PRIMARY KEY (pkServiceOrderCanceled)
);

CREATE TABLE ServiceOrderPayment
(
  pkServiceOrderPayment BIGINT   NOT NULL,
  number                INT      NOT NULL,
  note                  VARCHAR  NULL    ,
  date                  DATETIME NOT NULL,
  value                 REAL     NOT NULL,
  paymentType           INT      NOT NULL DEFAULT 1,
  status                INT      NOT NULL DEFAULT 0,
  fkServiceOrder        BIGINT   NOT NULL,
  fkPayment             BIGINT   NOT NULL,
  fkBalance             BIGINT   NOT NULL,
  PRIMARY KEY (pkServiceOrderPayment)
);

CREATE TABLE ServiceOrderRefund
(
  pkServiceOrderRefund   BIGINT   NOT NULL,
  value                  REAL     NOT NULL,
  fee                    REAL     NOT NULL,
  date                   DATETIME NULL    ,
  status                 INT      NOT NULL DEFAULT 0,
  fkServiceOrderPayment  BIGINT   NOT NULL,
  fkServiceOrderCanceled BIGINT   NOT NULL,
  fkRefound              BIGINT   NOT NULL,
  pkRefoundFee           BIGINT   NOT NULL,
  PRIMARY KEY (pkServiceOrderRefund)
);

CREATE TABLE ServiceOrderTax
(
  pkServiceOrderTax BIGINT   NOT NULL,
  note              VARCHAR  NOT NULL,
  date              DATETIME NOT NULL,
  value             REAL     NOT NULL,
  status            INT      NOT NULL DEFAULT 0,
  fkServiceOrder    BIGINT   NOT NULL,
  fkTaxFormula      BIGINT   NOT NULL,
  fkTaxSetting      BIGINT   NOT NULL,
  fkBalanceCity     BIGINT   NULL    ,
  pkBalanceCompany  BIGINT   NULL    ,
  fkTaxReceipt      BIGINT   NULL    ,
  PRIMARY KEY (pkServiceOrderTax)
);

CREATE TABLE ServiceTemplateContract
(
  pkServiceTemplateContract  BIGINT   NOT NULL,
  beginning                  DATETIME NOT NULL,
  end                        DATETIME NULL    ,
  status                     INT      NOT NULL,
  fkCategoryContractTemplate BIGINT   NOT NULL,
  fkService                  BIGINT   NOT NULL,
  fkTemplateAttachment       BIGINT   NOT NULL,
  fkSignatureAttachment      BIGINT   NOT NULL,
  PRIMARY KEY (pkServiceTemplateContract)
);

CREATE TABLE ServiceUnavailable
(
  pkServiceUnavailable BIGINT NOT NULL,
  beginning            DATE   NOT NULL,
  end                  DATE   NULL    ,
  status               INT    NOT NULL DEFAULT 0,
  fkService            BIGINT NOT NULL,
  PRIMARY KEY (pkServiceUnavailable)
);

CREATE TABLE SMS
(
  pkSMS           BIGINT  NOT NULL,
  smsText         VARCHAR NOT NULL,
  status          INT     NOT NULL DEFAULT 0,
  fkSMSController INT     NULL    ,
  PRIMARY KEY (pkSMS)
);

CREATE TABLE SMSController
(
  pkSMSController INT     NOT NULL,
  type            INT     NOT NULL DEFAULT 1,
  number          VARCHAR NOT NULL,
  status          INT     NOT NULL DEFAULT 0,
  fkCountry       BIGINT  NOT NULL,
  PRIMARY KEY (pkSMSController)
);

CREATE TABLE State
(
  pkState      BIGINT  NOT NULL,
  name         VARCHAR NOT NULL,
  abbreviation VARCHAR NOT NULL,
  status       INT     NOT NULL DEFAULT 0,
  fkCountry    BIGINT  NOT NULL,
  PRIMARY KEY (pkState)
);

CREATE TABLE TagReference
(
  pkTagReference BIGINT  NOT NULL,
  code           VARCHAR NOT NULL,
  name           VARCHAR NOT NULL,
  status         INT     NOT NULL DEFAULT 0,
  fkCountry      BIGINT  NULL    ,
  PRIMARY KEY (pkTagReference)
);

CREATE TABLE Tax
(
  pkTax     BIGINT  NOT NULL,
  name      VARCHAR NOT NULL,
  status    INT     NOT NULL DEFAULT 0,
  fkCountry BIGINT  NULL    ,
  PRIMARY KEY (pkTax)
);

CREATE TABLE TaxFormula
(
  pkTaxFormula          BIGINT NOT NULL,
  number                INT    NOT NULL,
  rate                  REAL   NULL    ,
  companyType           INT    NOT NULL DEFAULT 1,
  status                INT    NOT NULL DEFAULT 0,
  fkTax                 BIGINT NOT NULL,
  fkTaxSettings         BIGINT NULL    ,
  fkTaxFormula          BIGINT NULL    ,
  fkBankAccount         BIGINT NULL    ,
  fkTaxSettingsCategory BIGINT NULL    ,
  PRIMARY KEY (pkTaxFormula)
);

CREATE TABLE TaxReceipt
(
  pkTaxReceipt                BIGINT   NOT NULL,
  code                        VARCHAR  NOT NULL,
  date                        DATETIME NOT NULL,
  dateCanceled                DATETIME NULL    ,
  status                      INT      NOT NULL DEFAULT 0,
  fkUser                      BIGINT   NOT NULL,
  fkEmail                     BIGINT   NOT NULL,
  fkServiceOrder              BIGINT   NOT NULL,
  fkCity                      BIGINT   NOT NULL,
  pkServiceOrderCanceled      BIGINT   NULL    ,
  fkTaxReceiptCounterApproved BIGINT   NULL    ,
  PRIMARY KEY (pkTaxReceipt)
);

CREATE TABLE TaxReceiptCanceled
(
  pkTaxReceiptCanceled     BIGINT   NOT NULL,
  date                     DATETIME NULL    ,
  status                   INT      NOT NULL DEFAULT 0,
  fkTaxReceipt             BIGINT   NOT NULL,
  fkFiscalModuleFunction   BIGINT   NOT NULL,
  fkTaxReceiptFiscalModule BIGINT   NOT NULL,
  PRIMARY KEY (pkTaxReceiptCanceled)
);

CREATE TABLE TaxReceiptCounterApproved
(
  pkTaxReceiptCounterApproved BIGINT   NOT NULL,
  date                        DATETIME NOT NULL,
  status                      INT      NOT NULL DEFAULT 0,
  fkCounter                   BIGINT   NOT NULL,
  fkAttachment                BIGINT   NULL    ,
  PRIMARY KEY (pkTaxReceiptCounterApproved)
);

CREATE TABLE TaxReceiptFiscalModule
(
  pkTaxReceiptFiscalModule BIGINT   NOT NULL,
  isSendingInGroup         BOOLEAN  NOT NULL DEFAULT false,
  dateSent                 DATETIME NULL    ,
  answeredRevenueItemCode  VARCHAR  NULL    ,
  status                   INT      NOT NULL DEFAULT 0,
  fkFiscalModuleFunction   BIGINT   NOT NULL,
  fkTaxReceipt             BIGINT   NOT NULL,
  PRIMARY KEY (pkTaxReceiptFiscalModule)
);

CREATE TABLE TaxSettingAttachment
(
  pkTaxSettingAttachment BIGINT  NOT NULL,
  name                   VARCHAR NOT NULL,
  status                 INT     NOT NULL DEFAULT 0,
  fkTaxSetting           BIGINT  NOT NULL,
  fkAttachment           BIGINT  NOT NULL,
  PRIMARY KEY (pkTaxSettingAttachment)
);

CREATE TABLE TaxSettings
(
  pkTaxSettings     BIGINT   NOT NULL,
  filedDate         DATETIME NOT NULL,
  approvatedDate    DATETIME NULL    ,
  expiredDate       DATETIME NULL    ,
  observation       TEXT     NOT NULL,
  localType         INT      NOT NULL DEFAULT 1,
  hasRevenue        BOOLEAN  NOT NULL DEFAULT false,
  transferTaxPeriod INT      NOT NULL DEFAULT 1,
  transferTaxDay    INT      NOT NULL DEFAULT 1,
  status            INT      NOT NULL DEFAULT 0,
  fkCity            BIGINT   NOT NULL,
  fkScreenApproval  BIGINT   NOT NULL,
  fkCityAccount     BIGINT   NOT NULL,
  fkCounter         BIGINT   NOT NULL,
  PRIMARY KEY (pkTaxSettings)
);

CREATE TABLE TaxSettingsCategory
(
  pkTaxSettingsCategory BIGINT  NOT NULL,
  tax                   REAL    NULL    ,
  localType             INT     NOT NULL DEFAULT 1,
  freeTax               BOOLEAN NOT NULL DEFAULT false,
  status                INT     NOT NULL,
  fkTaxSettings         BIGINT  NULL    ,
  fkCategory            BIGINT  NULL    ,
  PRIMARY KEY (pkTaxSettingsCategory)
);

CREATE TABLE TaxSettingsCounter
(
  pkTaxSettingsCounter BIGINT  NOT NULL,
  byPercent            REAL    NULL    ,
  byOrderFixedPrice    REAL    NULL    ,
  official             BOOLEAN NOT NULL DEFAULT false,
  substituto           BOOLEAN NOT NULL DEFAULT false,
  status               INT     NOT NULL DEFAULT 0,
  fkTaxSettings        BIGINT  NOT NULL,
  fkCounter            BIGINT  NOT NULL,
  PRIMARY KEY (pkTaxSettingsCounter)
);

CREATE TABLE TransferMoney
(
  pkTransferMoney       BIGINT   NOT NULL,
  type                  INT      NOT NULL,
  note                  VARCHAR  NOT NULL,
  value                 REAL     NOT NULL,
  date                  DATETIME NOT NULL,
  identification        VARCHAR  NOT NULL,
  status                INT      NOT NULL DEFAULT 0,
  fkFromMainBankAccount BIGINT   NOT NULL,
  fkToBankAccount       BIGINT   NOT NULL,
  fkBalance             BIGINT   NOT NULL,
  fkCurrency            BIGINT   NOT NULL,
  fkWithdrawMoney       BIGINT   NULL    ,
  fkTaxReceipt          BIGINT   NULL    ,
  PRIMARY KEY (pkTransferMoney)
);

CREATE TABLE User
(
  pkUser                  BIGINT   NOT NULL,
  username                VARCHAR  NOT NULL,
  password                VARCHAR  NOT NULL,
  dateOfCreatingAccount   DATETIME NOT NULL,
  dateOfFinishingAccount  DATETIME NULL    ,
  facebookAccount         VARCHAR  NULL    ,
  useTwoStepsVerification BOOLEAN  NOT NULL,
  status                  INT      NOT NULL DEFAULT 0,
  fkPerson                BIGINT   NULL    ,
  fkJuridicalPerson       BIGINT   NULL    ,
  fkEmployee              BIGINT   NULL    ,
  fkCounter               BIGINT   NULL    ,
  fkBalance               BIGINT   NOT NULL,
  PRIMARY KEY (pkUser)
);

CREATE TABLE UserActivation
(
  pkUserActivation           BIGINT   NOT NULL,
  type                       INT      NOT NULL DEFAULT 1,
  code                       VARCHAR  NOT NULL,
  date                       DATETIME NOT NULL,
  dateActive                 DATETIME NULL    ,
  status                     INT      NOT NULL,
  fkUserLogin                BIGINT   NOT NULL,
  fkEmail                    BIGINT   NULL    ,
  fkSMS                      BIGINT   NULL    ,
  fkUserTwoStepsVerification BIGINT   NULL    ,
  PRIMARY KEY (pkUserActivation)
);

CREATE TABLE UserAttachment
(
  pkUserAttachment         BIGINT  NOT NULL,
  isProfilePicture         BOOLEAN NOT NULL DEFAULT false,
  status                   INT     NOT NULL DEFAULT 0,
  fkAttachment             BIGINT  NOT NULL,
  fkUser                   BIGINT  NOT NULL,
  fkIdentificationDocument BIGINT  NULL    ,
  PRIMARY KEY (pkUserAttachment)
);

CREATE TABLE UserLogin
(
  pkUserLogin BIGINT   NOT NULL,
  dispositive VARCHAR  NOT NULL,
  date        DATETIME NOT NULL,
  trust       BOOLEAN  NOT NULL DEFAULT false,
  status      INT      NOT NULL DEFAULT 0,
  fkAddress   BIGINT   NOT NULL,
  fkUser      BIGINT   NULL    ,
  PRIMARY KEY (pkUserLogin)
);

CREATE TABLE UserPayment
(
  pkUserPayment BIGINT  NOT NULL,
  type          INT     NOT NULL,
  default       BOOLEAN NOT NULL DEFAULT false,
  status        INT     NOT NULL DEFAULT 0,
  fkUser        BIGINT  NOT NULL,
  PRIMARY KEY (pkUserPayment)
);

CREATE TABLE UserPaymentCreditCard
(
  pkUserPaymentCreditCard BIGINT  NOT NULL,
  cardNumber              VARCHAR NOT NULL,
  nameOnCard              VARCHAR NOT NULL,
  dateOfExpirity          DATE    NOT NULL,
  fkUserPayment           BIGINT  NOT NULL,
  fkCreditCardBrand       BIGINT  NULL    ,
  PRIMARY KEY (pkUserPaymentCreditCard)
);

CREATE TABLE UserPaymentDigitalWallet
(
  pkUserPaymentDigitalWallet BIGINT   NOT NULL,
  userCodeAccess             VARCHAR  NOT NULL,
  datePairedUp               DATETIME NOT NULL,
  status                     INT      NOT NULL,
  fkUserPayment              BIGINT   NOT NULL,
  fkDigitalWallet            BIGINT   NOT NULL,
  PRIMARY KEY (pkUserPaymentDigitalWallet)
);

CREATE TABLE UserSettings
(
  pkUserSettings        BIGINT NOT NULL,
  status                INT    NOT NULL DEFAULT 0,
  fkUser                BIGINT NOT NULL,
  fkSignatureAttachment BIGINT NULL    ,
  PRIMARY KEY (pkUserSettings)
);

CREATE TABLE UserTwoStepsVerification
(
  pkUserTwoStepsVerification BIGINT   NOT NULL,
  dispositive                VARCHAR  NOT NULL,
  code                       VARCHAR  NOT NULL,
  datePaired                 DATETIME NOT NULL,
  status                     INT      NOT NULL,
  fkUser                     BIGINT   NULL    ,
  PRIMARY KEY (pkUserTwoStepsVerification)
);

CREATE TABLE WithdrawMoney
(
  pkWithdrawMoney  BIGINT   NOT NULL,
  value            REAL     NOT NULL,
  date             DATETIME NOT NULL,
  dateApprovated   DATETIME NULL    ,
  status           INT      NOT NULL DEFAULT 0,
  fkCurrency       BIGINT   NOT NULL,
  fkBankAccount    BIGINT   NOT NULL,
  fkUser           BIGINT   NULL    ,
  fkCity           BIGINT   NULL    ,
  fkScreenApproval BIGINT   NULL    ,
  PRIMARY KEY (pkWithdrawMoney)
);

ALTER TABLE IdentificationDocument
  ADD CONSTRAINT FK_Person_TO_IdentificationDocument
    FOREIGN KEY (fkPerson)
    REFERENCES Person (pkPerson);

ALTER TABLE IdentificationDocument
  ADD CONSTRAINT FK_JuridicalPerson_TO_IdentificationDocument
    FOREIGN KEY (fkJuridicalPerson)
    REFERENCES JuridicalPerson (pkJuridicalPerson);

ALTER TABLE Contact
  ADD CONSTRAINT FK_Person_TO_Contact
    FOREIGN KEY (fkPerson)
    REFERENCES Person (pkPerson);

ALTER TABLE Contact
  ADD CONSTRAINT FK_JuridicalPerson_TO_Contact
    FOREIGN KEY (fkJuridicalPerson)
    REFERENCES JuridicalPerson (pkJuridicalPerson);

ALTER TABLE User
  ADD CONSTRAINT FK_JuridicalPerson_TO_User
    FOREIGN KEY (fkJuridicalPerson)
    REFERENCES JuridicalPerson (pkJuridicalPerson);

ALTER TABLE User
  ADD CONSTRAINT FK_Person_TO_User
    FOREIGN KEY (fkPerson)
    REFERENCES Person (pkPerson);

ALTER TABLE Address
  ADD CONSTRAINT FK_Person_TO_Address
    FOREIGN KEY (fkPerson)
    REFERENCES Person (pkPerson);

ALTER TABLE Address
  ADD CONSTRAINT FK_JuridicalPerson_TO_Address
    FOREIGN KEY (fkJuridicalPerson)
    REFERENCES JuridicalPerson (pkJuridicalPerson);

ALTER TABLE State
  ADD CONSTRAINT FK_Country_TO_State
    FOREIGN KEY (fkCountry)
    REFERENCES Country (pkCountry);

ALTER TABLE City
  ADD CONSTRAINT FK_State_TO_City
    FOREIGN KEY (fkState)
    REFERENCES State (pkState);

ALTER TABLE Address
  ADD CONSTRAINT FK_City_TO_Address
    FOREIGN KEY (fkCity)
    REFERENCES City (pkCity);

ALTER TABLE EmployeeResponsibility
  ADD CONSTRAINT FK_Employee_TO_EmployeeResponsibility
    FOREIGN KEY (fkEmployee)
    REFERENCES Employee (pkEmployee);

ALTER TABLE Employee
  ADD CONSTRAINT FK_Person_TO_Employee
    FOREIGN KEY (fkPerson)
    REFERENCES Person (pkPerson);

ALTER TABLE User
  ADD CONSTRAINT FK_Employee_TO_User
    FOREIGN KEY (fkEmployee)
    REFERENCES Employee (pkEmployee);

ALTER TABLE ServiceAppointment
  ADD CONSTRAINT FK_Service_TO_ServiceAppointment
    FOREIGN KEY (fkService)
    REFERENCES Service (pkService);

ALTER TABLE Category
  ADD CONSTRAINT FK_Category_TO_Category
    FOREIGN KEY (fkCategory)
    REFERENCES Category (pkCategory);

ALTER TABLE ServiceCategory
  ADD CONSTRAINT FK_Category_TO_ServiceCategory
    FOREIGN KEY (fkCategory)
    REFERENCES Category (pkCategory);

ALTER TABLE Employee
  ADD CONSTRAINT FK_JuridicalPerson_TO_Employee
    FOREIGN KEY (fkJuridicalPerson)
    REFERENCES JuridicalPerson (pkJuridicalPerson);

ALTER TABLE ServiceAppointment
  ADD CONSTRAINT FK_Appointment_TO_ServiceAppointment
    FOREIGN KEY (fkAppointment)
    REFERENCES Appointment (pkAppointment);

ALTER TABLE ServiceUnavailable
  ADD CONSTRAINT FK_Service_TO_ServiceUnavailable
    FOREIGN KEY (fkService)
    REFERENCES Service (pkService);

ALTER TABLE Service
  ADD CONSTRAINT FK_EmployeeResponsibility_TO_Service
    FOREIGN KEY (fkEmployeeResponsibility)
    REFERENCES EmployeeResponsibility (pkEmployeeResponsibility);

ALTER TABLE Appointment
  ADD CONSTRAINT FK_User_TO_Appointment
    FOREIGN KEY (fkUser)
    REFERENCES User (pkUser);

ALTER TABLE ServiceOrder
  ADD CONSTRAINT FK_Appointment_TO_ServiceOrder
    FOREIGN KEY (fkAppointment)
    REFERENCES Appointment (pkAppointment);

ALTER TABLE ServiceOrder
  ADD CONSTRAINT FK_Person_TO_ServiceOrder
    FOREIGN KEY (fkPerson)
    REFERENCES Person (pkPerson);

ALTER TABLE ServiceOrder
  ADD CONSTRAINT FK_JuridicalPerson_TO_ServiceOrder
    FOREIGN KEY (fkJuridicalPerson)
    REFERENCES JuridicalPerson (pkJuridicalPerson);

ALTER TABLE UserPayment
  ADD CONSTRAINT FK_User_TO_UserPayment
    FOREIGN KEY (fkUser)
    REFERENCES User (pkUser);

ALTER TABLE ServiceOrderPayment
  ADD CONSTRAINT FK_ServiceOrder_TO_ServiceOrderPayment
    FOREIGN KEY (fkServiceOrder)
    REFERENCES ServiceOrder (pkServiceOrder);

ALTER TABLE Balance
  ADD CONSTRAINT FK_JuridicalPerson_TO_Balance
    FOREIGN KEY (fkJuridicalPerson)
    REFERENCES JuridicalPerson (pkJuridicalPerson);

ALTER TABLE TaxSettings
  ADD CONSTRAINT FK_City_TO_TaxSettings
    FOREIGN KEY (fkCity)
    REFERENCES City (pkCity);

ALTER TABLE Person
  ADD CONSTRAINT FK_Country_TO_Person
    FOREIGN KEY (fkBirthCountry)
    REFERENCES Country (pkCountry);

ALTER TABLE JuridicalPerson
  ADD CONSTRAINT FK_Country_TO_JuridicalPerson
    FOREIGN KEY (fkOriginCountry)
    REFERENCES Country (pkCountry);

ALTER TABLE IdentificationDocument
  ADD CONSTRAINT FK_State_TO_IdentificationDocument
    FOREIGN KEY (fkState)
    REFERENCES State (pkState);

ALTER TABLE IdentificationDocument
  ADD CONSTRAINT FK_Country_TO_IdentificationDocument
    FOREIGN KEY (fkCountry)
    REFERENCES Country (pkCountry);

ALTER TABLE TaxSettingAttachment
  ADD CONSTRAINT FK_TaxSettings_TO_TaxSettingAttachment
    FOREIGN KEY (fkTaxSetting)
    REFERENCES TaxSettings (pkTaxSettings);

ALTER TABLE TaxSettingAttachment
  ADD CONSTRAINT FK_Attachment_TO_TaxSettingAttachment
    FOREIGN KEY (fkAttachment)
    REFERENCES Attachment (pkAttachment);

ALTER TABLE UserAttachment
  ADD CONSTRAINT FK_Attachment_TO_UserAttachment
    FOREIGN KEY (fkAttachment)
    REFERENCES Attachment (pkAttachment);

ALTER TABLE UserAttachment
  ADD CONSTRAINT FK_User_TO_UserAttachment
    FOREIGN KEY (fkUser)
    REFERENCES User (pkUser);

ALTER TABLE TaxSettingsCategory
  ADD CONSTRAINT FK_TaxSettings_TO_TaxSettingsCategory
    FOREIGN KEY (fkTaxSettings)
    REFERENCES TaxSettings (pkTaxSettings);

ALTER TABLE TaxSettingsCategory
  ADD CONSTRAINT FK_Category_TO_TaxSettingsCategory
    FOREIGN KEY (fkCategory)
    REFERENCES Category (pkCategory);

ALTER TABLE ServiceOrderTax
  ADD CONSTRAINT FK_TaxSettings_TO_ServiceOrderTax
    FOREIGN KEY (fkTaxSetting)
    REFERENCES TaxSettings (pkTaxSettings);

ALTER TABLE ServiceOrder
  ADD CONSTRAINT FK_Address_TO_ServiceOrder
    FOREIGN KEY (fkAddress)
    REFERENCES Address (pkAddress);

ALTER TABLE ServiceTemplateContract
  ADD CONSTRAINT FK_Service_TO_ServiceTemplateContract
    FOREIGN KEY (fkService)
    REFERENCES Service (pkService);

ALTER TABLE ServiceTemplateContract
  ADD CONSTRAINT FK_Attachment_TO_ServiceTemplateContract
    FOREIGN KEY (fkTemplateAttachment)
    REFERENCES Attachment (pkAttachment);

ALTER TABLE ServiceTemplateContract
  ADD CONSTRAINT FK_Attachment_TO_ServiceTemplateContract1
    FOREIGN KEY (fkSignatureAttachment)
    REFERENCES Attachment (pkAttachment);

ALTER TABLE UserSettings
  ADD CONSTRAINT FK_User_TO_UserSettings
    FOREIGN KEY (fkUser)
    REFERENCES User (pkUser);

ALTER TABLE UserSettings
  ADD CONSTRAINT FK_Attachment_TO_UserSettings
    FOREIGN KEY (fkSignatureAttachment)
    REFERENCES Attachment (pkAttachment);

ALTER TABLE UserAttachment
  ADD CONSTRAINT FK_IdentificationDocument_TO_UserAttachment
    FOREIGN KEY (fkIdentificationDocument)
    REFERENCES IdentificationDocument (pkIdentificationDocument);

ALTER TABLE Service
  ADD CONSTRAINT FK_Address_TO_Service
    FOREIGN KEY (fkAddress)
    REFERENCES Address (pkAddress);

ALTER TABLE ScreenPermission
  ADD CONSTRAINT FK_Screen_TO_ScreenPermission
    FOREIGN KEY (fkScreen)
    REFERENCES Screen (pkScreen);

ALTER TABLE ScreenPermission
  ADD CONSTRAINT FK_User_TO_ScreenPermission
    FOREIGN KEY (fkUser)
    REFERENCES User (pkUser);

ALTER TABLE Approval
  ADD CONSTRAINT FK_User_TO_Approval
    FOREIGN KEY (fkUser)
    REFERENCES User (pkUser);

ALTER TABLE ScreenApproval
  ADD CONSTRAINT FK_Screen_TO_ScreenApproval
    FOREIGN KEY (fkScreen)
    REFERENCES Screen (pkScreen);

ALTER TABLE Approval
  ADD CONSTRAINT FK_ScreenApproval_TO_Approval
    FOREIGN KEY (fkScreenApproval)
    REFERENCES ScreenApproval (pkScreenApproval);

ALTER TABLE PrepayTax
  ADD CONSTRAINT FK_Balance_TO_PrepayTax
    FOREIGN KEY (fkBalance)
    REFERENCES Balance (pkBalance);

ALTER TABLE Bank
  ADD CONSTRAINT FK_Country_TO_Bank
    FOREIGN KEY (fkCountry)
    REFERENCES Country (pkCountry);

ALTER TABLE PrepayTax
  ADD CONSTRAINT FK_Payment_TO_PrepayTax
    FOREIGN KEY (fkPayment)
    REFERENCES Payment (pkPayment);

ALTER TABLE PaymentDebt
  ADD CONSTRAINT FK_Payment_TO_PaymentDebt
    FOREIGN KEY (fkPayment)
    REFERENCES Payment (pkPayment);

ALTER TABLE PaymentBill
  ADD CONSTRAINT FK_Payment_TO_PaymentBill
    FOREIGN KEY (fkPayment)
    REFERENCES Payment (pkPayment);

ALTER TABLE BankAccount
  ADD CONSTRAINT FK_JuridicalPerson_TO_BankAccount
    FOREIGN KEY (fkJuridicalPerson)
    REFERENCES JuridicalPerson (pkJuridicalPerson);

ALTER TABLE Currency
  ADD CONSTRAINT FK_Country_TO_Currency
    FOREIGN KEY (fkCountry)
    REFERENCES Country (pkCountry);

ALTER TABLE WithdrawMoney
  ADD CONSTRAINT FK_Currency_TO_WithdrawMoney
    FOREIGN KEY (fkCurrency)
    REFERENCES Currency (pkCurrency);

ALTER TABLE Balance
  ADD CONSTRAINT FK_Currency_TO_Balance
    FOREIGN KEY (fkCurrency)
    REFERENCES Currency (pkCurrency);

ALTER TABLE Language
  ADD CONSTRAINT FK_Country_TO_Language
    FOREIGN KEY (fkCountry)
    REFERENCES Country (pkCountry);

ALTER TABLE Country
  ADD CONSTRAINT FK_Language_TO_Country
    FOREIGN KEY (fkLanguage)
    REFERENCES Language (pkLanguage);

ALTER TABLE WithdrawMoney
  ADD CONSTRAINT FK_BankAccount_TO_WithdrawMoney
    FOREIGN KEY (fkBankAccount)
    REFERENCES BankAccount (pkBankAccount);

ALTER TABLE BankAccount
  ADD CONSTRAINT FK_Person_TO_BankAccount
    FOREIGN KEY (fkPerson)
    REFERENCES Person (pkPerson);

ALTER TABLE PaymentDebt
  ADD CONSTRAINT FK_BankAccount_TO_PaymentDebt
    FOREIGN KEY (fkBankAccount)
    REFERENCES BankAccount (pkBankAccount);

ALTER TABLE DigitalWallet
  ADD CONSTRAINT FK_Country_TO_DigitalWallet
    FOREIGN KEY (fkCountry)
    REFERENCES Country (pkCountry);

ALTER TABLE CreditCardBrand
  ADD CONSTRAINT FK_Country_TO_CreditCardBrand
    FOREIGN KEY (fkCountry)
    REFERENCES Country (pkCountry);

ALTER TABLE ServiceOrderPayment
  ADD CONSTRAINT FK_Payment_TO_ServiceOrderPayment
    FOREIGN KEY (fkPayment)
    REFERENCES Payment (pkPayment);

ALTER TABLE Payment
  ADD CONSTRAINT FK_UserPayment_TO_Payment
    FOREIGN KEY (fkUserPayment)
    REFERENCES UserPayment (pkUserPayment);

ALTER TABLE Payment
  ADD CONSTRAINT FK_Currency_TO_Payment
    FOREIGN KEY (fkCurrency)
    REFERENCES Currency (pkCurrency);

ALTER TABLE PaymentCredit
  ADD CONSTRAINT FK_Payment_TO_PaymentCredit
    FOREIGN KEY (fkPayment)
    REFERENCES Payment (pkPayment);

ALTER TABLE WithdrawMoney
  ADD CONSTRAINT FK_User_TO_WithdrawMoney
    FOREIGN KEY (fkUser)
    REFERENCES User (pkUser);

ALTER TABLE MainBankAccount
  ADD CONSTRAINT FK_BankAccount_TO_MainBankAccount
    FOREIGN KEY (fkBankAccount)
    REFERENCES BankAccount (pkBankAccount);

ALTER TABLE MainBankAccount
  ADD CONSTRAINT FK_Country_TO_MainBankAccount
    FOREIGN KEY (fkCountry)
    REFERENCES Country (pkCountry);

ALTER TABLE Payment
  ADD CONSTRAINT FK_MainBankAccount_TO_Payment
    FOREIGN KEY (fkMainBankAccount)
    REFERENCES MainBankAccount (pkMainBankAccount);

ALTER TABLE TaxSettings
  ADD CONSTRAINT FK_ScreenApproval_TO_TaxSettings
    FOREIGN KEY (fkScreenApproval)
    REFERENCES ScreenApproval (pkScreenApproval);

ALTER TABLE WithdrawMoney
  ADD CONSTRAINT FK_ScreenApproval_TO_WithdrawMoney
    FOREIGN KEY (fkScreenApproval)
    REFERENCES ScreenApproval (pkScreenApproval);

ALTER TABLE Approval
  ADD CONSTRAINT FK_TaxSettings_TO_Approval
    FOREIGN KEY (fkTaxSettings)
    REFERENCES TaxSettings (pkTaxSettings);

ALTER TABLE Approval
  ADD CONSTRAINT FK_WithdrawMoney_TO_Approval
    FOREIGN KEY (fkWithdrawMoney)
    REFERENCES WithdrawMoney (pkWithdrawMoney);

ALTER TABLE TransferMoney
  ADD CONSTRAINT FK_MainBankAccount_TO_TransferMoney
    FOREIGN KEY (fkFromMainBankAccount)
    REFERENCES MainBankAccount (pkMainBankAccount);

ALTER TABLE TransferMoney
  ADD CONSTRAINT FK_BankAccount_TO_TransferMoney
    FOREIGN KEY (fkToBankAccount)
    REFERENCES BankAccount (pkBankAccount);

ALTER TABLE BankAccount
  ADD CONSTRAINT FK_Currency_TO_BankAccount
    FOREIGN KEY (fkCurrency)
    REFERENCES Currency (pkCurrency);

ALTER TABLE TransferMoney
  ADD CONSTRAINT FK_Balance_TO_TransferMoney
    FOREIGN KEY (fkBalance)
    REFERENCES Balance (pkBalance);

ALTER TABLE TransferMoney
  ADD CONSTRAINT FK_WithdrawMoney_TO_TransferMoney
    FOREIGN KEY (fkWithdrawMoney)
    REFERENCES WithdrawMoney (pkWithdrawMoney);

ALTER TABLE Service
  ADD CONSTRAINT FK_ServiceCategory_TO_Service
    FOREIGN KEY (fkServiceCategory)
    REFERENCES ServiceCategory (pkServiceCategory);

ALTER TABLE PaymentDigitalWallet
  ADD CONSTRAINT FK_Payment_TO_PaymentDigitalWallet
    FOREIGN KEY (fkPayment)
    REFERENCES Payment (pkPayment);

ALTER TABLE PaymentBill
  ADD CONSTRAINT FK_Person_TO_PaymentBill
    FOREIGN KEY (fkPerson)
    REFERENCES Person (pkPerson);

ALTER TABLE HelpCenterServicesTypes
  ADD CONSTRAINT FK_HelpCenterServicesTypes_TO_HelpCenterServicesTypes
    FOREIGN KEY (fkHelpCenterServicesTypes)
    REFERENCES HelpCenterServicesTypes (pkHelpCenterServicesTypes);

ALTER TABLE HelpCenterMessages
  ADD CONSTRAINT FK_User_TO_HelpCenterMessages
    FOREIGN KEY (fkUserCompany)
    REFERENCES User (pkUser);

ALTER TABLE HelpCenterMessages
  ADD CONSTRAINT FK_User_TO_HelpCenterMessages1
    FOREIGN KEY (fkUser)
    REFERENCES User (pkUser);

ALTER TABLE HelpCenterAssistant
  ADD CONSTRAINT FK_JuridicalPerson_TO_HelpCenterAssistant
    FOREIGN KEY (fkJuridicalPerson)
    REFERENCES JuridicalPerson (pkJuridicalPerson);

ALTER TABLE HelpCenterMessages
  ADD CONSTRAINT FK_HelpCenterAssistant_TO_HelpCenterMessages
    FOREIGN KEY (fkHelpCenterAssistant)
    REFERENCES HelpCenterAssistant (pkHelpCenterAssistant);

ALTER TABLE HelpCenter
  ADD CONSTRAINT FK_Contact_TO_HelpCenter
    FOREIGN KEY (fkContactPhone)
    REFERENCES Contact (pkContact);

ALTER TABLE HelpCenter
  ADD CONSTRAINT FK_HelpCenterServicesTypes_TO_HelpCenter
    FOREIGN KEY (fkHelpCenterServicesTypes)
    REFERENCES HelpCenterServicesTypes (pkHelpCenterServicesTypes);

ALTER TABLE HelpCenter
  ADD CONSTRAINT FK_User_TO_HelpCenter
    FOREIGN KEY (fkUser)
    REFERENCES User (pkUser);

ALTER TABLE UserPaymentDigitalWallet
  ADD CONSTRAINT FK_UserPayment_TO_UserPaymentDigitalWallet
    FOREIGN KEY (fkUserPayment)
    REFERENCES UserPayment (pkUserPayment);

ALTER TABLE UserPaymentDigitalWallet
  ADD CONSTRAINT FK_DigitalWallet_TO_UserPaymentDigitalWallet
    FOREIGN KEY (fkDigitalWallet)
    REFERENCES DigitalWallet (pkDigitalWallet);

ALTER TABLE PaymentDigitalWallet
  ADD CONSTRAINT FK_UserPaymentDigitalWallet_TO_PaymentDigitalWallet
    FOREIGN KEY (fkUserPaymentDigitalWallet)
    REFERENCES UserPaymentDigitalWallet (pkUserPaymentDigitalWallet);

ALTER TABLE MainBankAccount
  ADD CONSTRAINT FK_ScreenApproval_TO_MainBankAccount
    FOREIGN KEY (fkScreenApproval)
    REFERENCES ScreenApproval (pkScreenApproval);

ALTER TABLE Approval
  ADD CONSTRAINT FK_MainBankAccount_TO_Approval
    FOREIGN KEY (fkMainBankAccount)
    REFERENCES MainBankAccount (pkMainBankAccount);

ALTER TABLE UserPaymentCreditCard
  ADD CONSTRAINT FK_UserPayment_TO_UserPaymentCreditCard
    FOREIGN KEY (fkUserPayment)
    REFERENCES UserPayment (pkUserPayment);

ALTER TABLE PaymentCredit
  ADD CONSTRAINT FK_UserPaymentCreditCard_TO_PaymentCredit
    FOREIGN KEY (fkUserPaymentCreditCard)
    REFERENCES UserPaymentCreditCard (pkUserPaymentCreditCard);

ALTER TABLE UserPaymentCreditCard
  ADD CONSTRAINT FK_CreditCardBrand_TO_UserPaymentCreditCard
    FOREIGN KEY (fkCreditCardBrand)
    REFERENCES CreditCardBrand (pkCreditCardBrand);

ALTER TABLE BankAccount
  ADD CONSTRAINT FK_UserPayment_TO_BankAccount
    FOREIGN KEY (fkUserPayment)
    REFERENCES UserPayment (pkUserPayment);

ALTER TABLE ApprovalAttachment
  ADD CONSTRAINT FK_Approval_TO_ApprovalAttachment
    FOREIGN KEY (fkApproval)
    REFERENCES Approval (pkApproval);

ALTER TABLE ApprovalAttachment
  ADD CONSTRAINT FK_Attachment_TO_ApprovalAttachment
    FOREIGN KEY (fkAttachment)
    REFERENCES Attachment (pkAttachment);

ALTER TABLE HelpCenterTypicalAsks
  ADD CONSTRAINT FK_HelpCenterTypicalAsks_TO_HelpCenterTypicalAsks
    FOREIGN KEY (fkHelpCenterTypicalAsks)
    REFERENCES HelpCenterTypicalAsks (pkHelpCenterTypicalAsks);

ALTER TABLE HelpCenter
  ADD CONSTRAINT FK_Contact_TO_HelpCenter1
    FOREIGN KEY (fkContactEmail)
    REFERENCES Contact (pkContact);

ALTER TABLE HelpCenterService
  ADD CONSTRAINT FK_HelpCenter_TO_HelpCenterService
    FOREIGN KEY (fkHelpCenter)
    REFERENCES HelpCenter (pkHelpCenter);

ALTER TABLE HelpCenterTypicalAsks
  ADD CONSTRAINT FK_Language_TO_HelpCenterTypicalAsks
    FOREIGN KEY (fkLanguage)
    REFERENCES Language (pkLanguage);

ALTER TABLE HelpCenterService
  ADD CONSTRAINT FK_User_TO_HelpCenterService
    FOREIGN KEY (fkUser)
    REFERENCES User (pkUser);

ALTER TABLE EmailController
  ADD CONSTRAINT FK_Country_TO_EmailController
    FOREIGN KEY (fkCountry)
    REFERENCES Country (pkCountry);

ALTER TABLE SMSController
  ADD CONSTRAINT FK_Country_TO_SMSController
    FOREIGN KEY (fkCountry)
    REFERENCES Country (pkCountry);

ALTER TABLE Email
  ADD CONSTRAINT FK_EmailController_TO_Email
    FOREIGN KEY (fkEmailController)
    REFERENCES EmailController (pkEmailController);

ALTER TABLE Email
  ADD CONSTRAINT FK_Contact_TO_Email
    FOREIGN KEY (fkContact)
    REFERENCES Contact (pkContact);

ALTER TABLE SMS
  ADD CONSTRAINT FK_SMSController_TO_SMS
    FOREIGN KEY (fkSMSController)
    REFERENCES SMSController (pkSMSController);

ALTER TABLE HelpCenterService
  ADD CONSTRAINT FK_SMS_TO_HelpCenterService
    FOREIGN KEY (pkSMS)
    REFERENCES SMS (pkSMS);

ALTER TABLE HelpCenterService
  ADD CONSTRAINT FK_Email_TO_HelpCenterService
    FOREIGN KEY (fkEmail)
    REFERENCES Email (pkEmail);

ALTER TABLE HelpCenterService
  ADD CONSTRAINT FK_SMS_TO_HelpCenterService1
    FOREIGN KEY (fkSMS)
    REFERENCES SMS (pkSMS);

ALTER TABLE UserActivation
  ADD CONSTRAINT FK_Email_TO_UserActivation
    FOREIGN KEY (fkEmail)
    REFERENCES Email (pkEmail);

ALTER TABLE UserActivation
  ADD CONSTRAINT FK_SMS_TO_UserActivation
    FOREIGN KEY (fkSMS)
    REFERENCES SMS (pkSMS);

ALTER TABLE UserLogin
  ADD CONSTRAINT FK_Address_TO_UserLogin
    FOREIGN KEY (fkAddress)
    REFERENCES Address (pkAddress);

ALTER TABLE UserActivation
  ADD CONSTRAINT FK_UserTwoStepsVerification_TO_UserActivation
    FOREIGN KEY (fkUserTwoStepsVerification)
    REFERENCES UserTwoStepsVerification (pkUserTwoStepsVerification);

ALTER TABLE UserTwoStepsVerification
  ADD CONSTRAINT FK_User_TO_UserTwoStepsVerification
    FOREIGN KEY (fkUser)
    REFERENCES User (pkUser);

ALTER TABLE UserActivation
  ADD CONSTRAINT FK_UserLogin_TO_UserActivation
    FOREIGN KEY (fkUserLogin)
    REFERENCES UserLogin (pkUserLogin);

ALTER TABLE UserLogin
  ADD CONSTRAINT FK_User_TO_UserLogin
    FOREIGN KEY (fkUser)
    REFERENCES User (pkUser);

ALTER TABLE Log
  ADD CONSTRAINT FK_Country_TO_Log
    FOREIGN KEY (fkCountry)
    REFERENCES Country (pkCountry);

ALTER TABLE Approval
  ADD CONSTRAINT FK_LogBackuped_TO_Approval
    FOREIGN KEY (fkLogBackuped)
    REFERENCES LogBackuped (pkLogBackuped);

ALTER TABLE LogBackuped
  ADD CONSTRAINT FK_ScreenApproval_TO_LogBackuped
    FOREIGN KEY (fkScreenApproval)
    REFERENCES ScreenApproval (pkScreenApproval);

ALTER TABLE LogBackuped
  ADD CONSTRAINT FK_Country_TO_LogBackuped
    FOREIGN KEY (fkCountry)
    REFERENCES Country (pkCountry);

ALTER TABLE ScreenApproval
  ADD CONSTRAINT FK_Country_TO_ScreenApproval
    FOREIGN KEY (fkCountry)
    REFERENCES Country (pkCountry);

ALTER TABLE CityAccount
  ADD CONSTRAINT FK_City_TO_CityAccount
    FOREIGN KEY (fkCity)
    REFERENCES City (pkCity);

ALTER TABLE TaxSettings
  ADD CONSTRAINT FK_CityAccount_TO_TaxSettings
    FOREIGN KEY (fkCityAccount)
    REFERENCES CityAccount (pkCityAccount);

ALTER TABLE CityAccount
  ADD CONSTRAINT FK_BankAccount_TO_CityAccount
    FOREIGN KEY (fkBankAccount)
    REFERENCES BankAccount (pkBankAccount);

ALTER TABLE TransferMoney
  ADD CONSTRAINT FK_Currency_TO_TransferMoney
    FOREIGN KEY (fkCurrency)
    REFERENCES Currency (pkCurrency);

ALTER TABLE TaxReceipt
  ADD CONSTRAINT FK_User_TO_TaxReceipt
    FOREIGN KEY (fkUser)
    REFERENCES User (pkUser);

ALTER TABLE WithdrawMoney
  ADD CONSTRAINT FK_City_TO_WithdrawMoney
    FOREIGN KEY (fkCity)
    REFERENCES City (pkCity);

ALTER TABLE User
  ADD CONSTRAINT FK_Balance_TO_User
    FOREIGN KEY (fkBalance)
    REFERENCES Balance (pkBalance);

ALTER TABLE Counter
  ADD CONSTRAINT FK_JuridicalPerson_TO_Counter
    FOREIGN KEY (fkJuridicalPerson)
    REFERENCES JuridicalPerson (pkJuridicalPerson);

ALTER TABLE User
  ADD CONSTRAINT FK_Counter_TO_User
    FOREIGN KEY (fkCounter)
    REFERENCES Counter (pkCounter);

ALTER TABLE TaxFormula
  ADD CONSTRAINT FK_TaxSettings_TO_TaxFormula
    FOREIGN KEY (fkTaxSettings)
    REFERENCES TaxSettings (pkTaxSettings);

ALTER TABLE TaxFormula
  ADD CONSTRAINT FK_TaxFormula_TO_TaxFormula
    FOREIGN KEY (fkTaxFormula)
    REFERENCES TaxFormula (pkTaxFormula);

ALTER TABLE ServiceOrderTax
  ADD CONSTRAINT FK_ServiceOrder_TO_ServiceOrderTax
    FOREIGN KEY (fkServiceOrder)
    REFERENCES ServiceOrder (pkServiceOrder);

ALTER TABLE ServiceOrderTax
  ADD CONSTRAINT FK_TaxFormula_TO_ServiceOrderTax
    FOREIGN KEY (fkTaxFormula)
    REFERENCES TaxFormula (pkTaxFormula);

ALTER TABLE TaxSettingsCounter
  ADD CONSTRAINT FK_TaxSettings_TO_TaxSettingsCounter
    FOREIGN KEY (fkTaxSettings)
    REFERENCES TaxSettings (pkTaxSettings);

ALTER TABLE Balance
  ADD CONSTRAINT FK_Person_TO_Balance
    FOREIGN KEY (fkPerson)
    REFERENCES Person (pkPerson);

ALTER TABLE LoanMoney
  ADD CONSTRAINT FK_Person_TO_LoanMoney
    FOREIGN KEY (fkPerson)
    REFERENCES Person (pkPerson);

ALTER TABLE LoanMoney
  ADD CONSTRAINT FK_JuridicalPerson_TO_LoanMoney
    FOREIGN KEY (fkJuridicalPerson)
    REFERENCES JuridicalPerson (pkJuridicalPerson);

ALTER TABLE LoanMoney
  ADD CONSTRAINT FK_LoanMoneyRequest_TO_LoanMoney
    FOREIGN KEY (fkLoanMoneyRequest)
    REFERENCES LoanMoneyRequest (pkLoanMoneyRequest);

ALTER TABLE PaymentTransfer
  ADD CONSTRAINT FK_Payment_TO_PaymentTransfer
    FOREIGN KEY (fkPayment)
    REFERENCES Payment (pkPayment);

ALTER TABLE LoanMoney
  ADD CONSTRAINT FK_Payment_TO_LoanMoney
    FOREIGN KEY (fkPayment)
    REFERENCES Payment (pkPayment);

ALTER TABLE LoanMoneyRequest
  ADD CONSTRAINT FK_JuridicalPerson_TO_LoanMoneyRequest
    FOREIGN KEY (fkJuridicalPerson)
    REFERENCES JuridicalPerson (pkJuridicalPerson);

ALTER TABLE LoanMoneyRequest
  ADD CONSTRAINT FK_Person_TO_LoanMoneyRequest
    FOREIGN KEY (fkPerson)
    REFERENCES Person (pkPerson);

ALTER TABLE LoanBankProgram
  ADD CONSTRAINT FK_Bank_TO_LoanBankProgram
    FOREIGN KEY (fkBank)
    REFERENCES Bank (pkBank);

ALTER TABLE LoanBankProgram
  ADD CONSTRAINT FK_LoanBankProgramProfile_TO_LoanBankProgram
    FOREIGN KEY (fkLoanBankProgramProfile)
    REFERENCES LoanBankProgramProfile (pkLoanBankProgramProfile);

ALTER TABLE LoanBankProgramProfileCategory
  ADD CONSTRAINT FK_Category_TO_LoanBankProgramProfileCategory
    FOREIGN KEY (fkCategory)
    REFERENCES Category (pkCategory);

ALTER TABLE LoanBankProgramProfileCategory
  ADD CONSTRAINT FK_LoanBankProgramProfile_TO_LoanBankProgramProfileCategory
    FOREIGN KEY (fkLoanBankProgramProfile)
    REFERENCES LoanBankProgramProfile (pkLoanBankProgramProfile);

ALTER TABLE LoanMoneyRequest
  ADD CONSTRAINT FK_LoanBankProgram_TO_LoanMoneyRequest
    FOREIGN KEY (fkLoanBankProgram)
    REFERENCES LoanBankProgram (pkLoanBankAssociated);

ALTER TABLE LoanMoney
  ADD CONSTRAINT FK_Currency_TO_LoanMoney
    FOREIGN KEY (fkCurrency)
    REFERENCES Currency (pkCurrency);

ALTER TABLE Bank
  ADD CONSTRAINT FK_JuridicalPerson_TO_Bank
    FOREIGN KEY (fkJuridicalPerson)
    REFERENCES JuridicalPerson (pkJuridicalPerson);

ALTER TABLE BankAccount
  ADD CONSTRAINT FK_BankBranch_TO_BankAccount
    FOREIGN KEY (fkBankBranch)
    REFERENCES BankBranch (pkBankBranch);

ALTER TABLE BankAccount
  ADD CONSTRAINT FK_Bank_TO_BankAccount
    FOREIGN KEY (fkBank)
    REFERENCES Bank (pkBank);

ALTER TABLE BankBranch
  ADD CONSTRAINT FK_Bank_TO_BankBranch
    FOREIGN KEY (fkBank)
    REFERENCES Bank (pkBank);

ALTER TABLE BankBranch
  ADD CONSTRAINT FK_JuridicalPerson_TO_BankBranch
    FOREIGN KEY (fkJuridicalPerson)
    REFERENCES JuridicalPerson (pkJuridicalPerson);

ALTER TABLE LoanBankProgramProfileBranch
  ADD CONSTRAINT FK_LoanBankProgramProfile_TO_LoanBankProgramProfileBranch
    FOREIGN KEY (fkLoanBankProgramProfile)
    REFERENCES LoanBankProgramProfile (pkLoanBankProgramProfile);

ALTER TABLE LoanBankProgramProfileBranch
  ADD CONSTRAINT FK_BankBranch_TO_LoanBankProgramProfileBranch
    FOREIGN KEY (fkBankBranch)
    REFERENCES BankBranch (pkBankBranch);

ALTER TABLE BalanceBlocked
  ADD CONSTRAINT FK_LoanMoney_TO_BalanceBlocked
    FOREIGN KEY (fkLoanMoney)
    REFERENCES LoanMoney (pkLoanMoney);

ALTER TABLE PaymentTransfer
  ADD CONSTRAINT FK_BankAccount_TO_PaymentTransfer
    FOREIGN KEY (fkBankAccount)
    REFERENCES BankAccount (pkBankAccount);

ALTER TABLE PaymentBalance
  ADD CONSTRAINT FK_BalanceBlocked_TO_PaymentBalance
    FOREIGN KEY (fkBalanceBlocked)
    REFERENCES BalanceBlocked (pkBalanceBlocked);

ALTER TABLE PaymentBalance
  ADD CONSTRAINT FK_Payment_TO_PaymentBalance
    FOREIGN KEY (fkPayment)
    REFERENCES Payment (pkPayment);

ALTER TABLE BalanceBlocked
  ADD CONSTRAINT FK_Balance_TO_BalanceBlocked
    FOREIGN KEY (fkBalance)
    REFERENCES Balance (pkBalance);

ALTER TABLE ServiceOrderCanceled
  ADD CONSTRAINT FK_ServiceOrder_TO_ServiceOrderCanceled
    FOREIGN KEY (pkServiceOrder)
    REFERENCES ServiceOrder (pkServiceOrder);

ALTER TABLE ServiceOrderCanceled
  ADD CONSTRAINT FK_User_TO_ServiceOrderCanceled
    FOREIGN KEY (fkUser)
    REFERENCES User (pkUser);

ALTER TABLE ServiceOrderRefund
  ADD CONSTRAINT FK_ServiceOrderPayment_TO_ServiceOrderRefund
    FOREIGN KEY (fkServiceOrderPayment)
    REFERENCES ServiceOrderPayment (pkServiceOrderPayment);

ALTER TABLE ServiceOrderRefund
  ADD CONSTRAINT FK_ServiceOrderCanceled_TO_ServiceOrderRefund
    FOREIGN KEY (fkServiceOrderCanceled)
    REFERENCES ServiceOrderCanceled (pkServiceOrderCanceled);

ALTER TABLE ServiceOrder
  ADD CONSTRAINT FK_Currency_TO_ServiceOrder
    FOREIGN KEY (fkCurrency)
    REFERENCES Currency (pkCurrency);

ALTER TABLE Service
  ADD CONSTRAINT FK_JuridicalPerson_TO_Service
    FOREIGN KEY (fkJuridicalPerson)
    REFERENCES JuridicalPerson (pkJuridicalPerson);

ALTER TABLE ServiceOrderAttachment
  ADD CONSTRAINT FK_ServiceTemplateContract_TO_ServiceOrderAttachment
    FOREIGN KEY (pkServiceContract)
    REFERENCES ServiceTemplateContract (pkServiceTemplateContract);

ALTER TABLE ServiceOrderAttachment
  ADD CONSTRAINT FK_ServiceOrder_TO_ServiceOrderAttachment
    FOREIGN KEY (fkServiceOrder)
    REFERENCES ServiceOrder (pkServiceOrder);

ALTER TABLE ServiceOrderAttachment
  ADD CONSTRAINT FK_User_TO_ServiceOrderAttachment
    FOREIGN KEY (fkUser)
    REFERENCES User (pkUser);

ALTER TABLE ServiceOrderAttachment
  ADD CONSTRAINT FK_Attachment_TO_ServiceOrderAttachment
    FOREIGN KEY (fkAttachment)
    REFERENCES Attachment (pkAttachment);

ALTER TABLE PrepayTax
  ADD CONSTRAINT FK_User_TO_PrepayTax
    FOREIGN KEY (fkUser)
    REFERENCES User (pkUser);

ALTER TABLE ServiceOrderRefund
  ADD CONSTRAINT FK_Refound_TO_ServiceOrderRefund
    FOREIGN KEY (fkRefound)
    REFERENCES Refound (pkRefound);

ALTER TABLE Category
  ADD CONSTRAINT FK_Country_TO_Category
    FOREIGN KEY (fkCountry)
    REFERENCES Country (pkCountry);

ALTER TABLE CategoryContractTemplate
  ADD CONSTRAINT FK_Attachment_TO_CategoryContractTemplate
    FOREIGN KEY (pkAttachment)
    REFERENCES Attachment (pkAttachment);

ALTER TABLE ServiceTemplateContract
  ADD CONSTRAINT FK_CategoryContractTemplate_TO_ServiceTemplateContract
    FOREIGN KEY (fkCategoryContractTemplate)
    REFERENCES CategoryContractTemplate (pkCategoryContractTemplate);

ALTER TABLE ServiceOrderRefund
  ADD CONSTRAINT FK_Refound_TO_ServiceOrderRefund1
    FOREIGN KEY (pkRefoundFee)
    REFERENCES Refound (pkRefound);

ALTER TABLE Refound
  ADD CONSTRAINT FK_Balance_TO_Refound
    FOREIGN KEY (fkBalance)
    REFERENCES Balance (pkBalance);

ALTER TABLE Refound
  ADD CONSTRAINT FK_BalanceBlocked_TO_Refound
    FOREIGN KEY (fkBalanceBlocked)
    REFERENCES BalanceBlocked (pkBalanceBlocked);

ALTER TABLE Refound
  ADD CONSTRAINT FK_Balance_TO_Refound1
    FOREIGN KEY (fkBalanceRefoundFee)
    REFERENCES Balance (pkBalance);

ALTER TABLE ServiceOrderPayment
  ADD CONSTRAINT FK_Balance_TO_ServiceOrderPayment
    FOREIGN KEY (fkBalance)
    REFERENCES Balance (pkBalance);

ALTER TABLE TaxReceipt
  ADD CONSTRAINT FK_Email_TO_TaxReceipt
    FOREIGN KEY (fkEmail)
    REFERENCES Email (pkEmail);

ALTER TABLE ServiceOrderTax
  ADD CONSTRAINT FK_Balance_TO_ServiceOrderTax
    FOREIGN KEY (fkBalanceCity)
    REFERENCES Balance (pkBalance);

ALTER TABLE ServiceOrderTax
  ADD CONSTRAINT FK_Balance_TO_ServiceOrderTax1
    FOREIGN KEY (pkBalanceCompany)
    REFERENCES Balance (pkBalance);

ALTER TABLE TaxReceipt
  ADD CONSTRAINT FK_ServiceOrder_TO_TaxReceipt
    FOREIGN KEY (fkServiceOrder)
    REFERENCES ServiceOrder (pkServiceOrder);

ALTER TABLE TaxReceipt
  ADD CONSTRAINT FK_ServiceOrderCanceled_TO_TaxReceipt
    FOREIGN KEY (pkServiceOrderCanceled)
    REFERENCES ServiceOrderCanceled (pkServiceOrderCanceled);

ALTER TABLE TaxReceipt
  ADD CONSTRAINT FK_City_TO_TaxReceipt
    FOREIGN KEY (fkCity)
    REFERENCES City (pkCity);

ALTER TABLE Counter
  ADD CONSTRAINT FK_Person_TO_Counter
    FOREIGN KEY (fkPerson)
    REFERENCES Person (pkPerson);

ALTER TABLE TaxSettingsCounter
  ADD CONSTRAINT FK_Counter_TO_TaxSettingsCounter
    FOREIGN KEY (fkCounter)
    REFERENCES Counter (pkCounter);

ALTER TABLE IdentificationDocumentAttachment
  ADD CONSTRAINT FK_IdentificationDocument_TO_IdentificationDocumentAttachment
    FOREIGN KEY (fkIdentificationDocument)
    REFERENCES IdentificationDocument (pkIdentificationDocument);

ALTER TABLE IdentificationDocumentAttachment
  ADD CONSTRAINT FK_Attachment_TO_IdentificationDocumentAttachment
    FOREIGN KEY (fkAttachment)
    REFERENCES Attachment (pkAttachment);

ALTER TABLE TaxFormula
  ADD CONSTRAINT FK_BankAccount_TO_TaxFormula
    FOREIGN KEY (fkBankAccount)
    REFERENCES BankAccount (pkBankAccount);

ALTER TABLE TaxFormula
  ADD CONSTRAINT FK_TaxSettingsCategory_TO_TaxFormula
    FOREIGN KEY (fkTaxSettingsCategory)
    REFERENCES TaxSettingsCategory (pkTaxSettingsCategory);

ALTER TABLE TaxFormula
  ADD CONSTRAINT FK_Tax_TO_TaxFormula
    FOREIGN KEY (fkTax)
    REFERENCES Tax (pkTax);

ALTER TABLE CityAccount
  ADD CONSTRAINT FK_Tax_TO_CityAccount
    FOREIGN KEY (fkTax)
    REFERENCES Tax (pkTax);

ALTER TABLE TaxReceiptCounterApproved
  ADD CONSTRAINT FK_Counter_TO_TaxReceiptCounterApproved
    FOREIGN KEY (fkCounter)
    REFERENCES Counter (pkCounter);

ALTER TABLE TaxSettings
  ADD CONSTRAINT FK_Counter_TO_TaxSettings
    FOREIGN KEY (fkCounter)
    REFERENCES Counter (pkCounter);

ALTER TABLE TaxReceiptCounterApproved
  ADD CONSTRAINT FK_Attachment_TO_TaxReceiptCounterApproved
    FOREIGN KEY (fkAttachment)
    REFERENCES Attachment (pkAttachment);

ALTER TABLE DepartmentOfFinance
  ADD CONSTRAINT FK_JuridicalPerson_TO_DepartmentOfFinance
    FOREIGN KEY (fkJuridicalPerson)
    REFERENCES JuridicalPerson (pkJuridicalPerson);

ALTER TABLE DepartmentOfFinance
  ADD CONSTRAINT FK_Person_TO_DepartmentOfFinance
    FOREIGN KEY (fkResponsable)
    REFERENCES Person (pkPerson);

ALTER TABLE TaxReceipt
  ADD CONSTRAINT FK_TaxReceiptCounterApproved_TO_TaxReceipt
    FOREIGN KEY (fkTaxReceiptCounterApproved)
    REFERENCES TaxReceiptCounterApproved (pkTaxReceiptCounterApproved);

ALTER TABLE DepartmentOfFinance
  ADD CONSTRAINT FK_Address_TO_DepartmentOfFinance
    FOREIGN KEY (fkAddress)
    REFERENCES Address (pkAddress);

ALTER TABLE City
  ADD CONSTRAINT FK_DepartmentOfFinance_TO_City
    FOREIGN KEY (fkDepartmentOfFinance)
    REFERENCES DepartmentOfFinance (pkDepartmentOfFinance);

ALTER TABLE City
  ADD CONSTRAINT FK_Balance_TO_City
    FOREIGN KEY (fkBalance)
    REFERENCES Balance (pkBalance);

ALTER TABLE DepartmentOfFinance
  ADD CONSTRAINT FK_State_TO_DepartmentOfFinance
    FOREIGN KEY (fkState)
    REFERENCES State (pkState);

ALTER TABLE FiscalModule
  ADD CONSTRAINT FK_TaxSettings_TO_FiscalModule
    FOREIGN KEY (fkTaxSettings)
    REFERENCES TaxSettings (pkTaxSettings);

ALTER TABLE FiscalModuleFunction
  ADD CONSTRAINT FK_FiscalModule_TO_FiscalModuleFunction
    FOREIGN KEY (fkFiscalModule)
    REFERENCES FiscalModule (pkFiscalModule);

ALTER TABLE FiscalModuleFunctionTag
  ADD CONSTRAINT FK_TagReference_TO_FiscalModuleFunctionTag
    FOREIGN KEY (fkTagReference)
    REFERENCES TagReference (pkTagReference);

ALTER TABLE TagReference
  ADD CONSTRAINT FK_Country_TO_TagReference
    FOREIGN KEY (fkCountry)
    REFERENCES Country (pkCountry);

ALTER TABLE Tax
  ADD CONSTRAINT FK_Country_TO_Tax
    FOREIGN KEY (fkCountry)
    REFERENCES Country (pkCountry);

ALTER TABLE TaxReceiptFiscalModule
  ADD CONSTRAINT FK_FiscalModuleFunction_TO_TaxReceiptFiscalModule
    FOREIGN KEY (fkFiscalModuleFunction)
    REFERENCES FiscalModuleFunction (pkFiscalModuleFunction);

ALTER TABLE TaxReceiptFiscalModule
  ADD CONSTRAINT FK_TaxReceipt_TO_TaxReceiptFiscalModule
    FOREIGN KEY (fkTaxReceipt)
    REFERENCES TaxReceipt (pkTaxReceipt);

ALTER TABLE TaxReceiptCanceled
  ADD CONSTRAINT FK_FiscalModuleFunction_TO_TaxReceiptCanceled
    FOREIGN KEY (fkFiscalModuleFunction)
    REFERENCES FiscalModuleFunction (pkFiscalModuleFunction);

ALTER TABLE TaxReceiptCanceled
  ADD CONSTRAINT FK_TaxReceiptFiscalModule_TO_TaxReceiptCanceled
    FOREIGN KEY (fkTaxReceiptFiscalModule)
    REFERENCES TaxReceiptFiscalModule (pkTaxReceiptFiscalModule);

ALTER TABLE TaxReceiptCanceled
  ADD CONSTRAINT FK_TaxReceipt_TO_TaxReceiptCanceled
    FOREIGN KEY (fkTaxReceipt)
    REFERENCES TaxReceipt (pkTaxReceipt);

ALTER TABLE ServiceOrderTax
  ADD CONSTRAINT FK_TaxReceipt_TO_ServiceOrderTax
    FOREIGN KEY (fkTaxReceipt)
    REFERENCES TaxReceipt (pkTaxReceipt);

ALTER TABLE TransferMoney
  ADD CONSTRAINT FK_TaxReceipt_TO_TransferMoney
    FOREIGN KEY (fkTaxReceipt)
    REFERENCES TaxReceipt (pkTaxReceipt);

ALTER TABLE FiscalModuleFunctionTag
  ADD CONSTRAINT FK_FiscalModuleFunctionTag_TO_FiscalModuleFunctionTag
    FOREIGN KEY (fkFiscalModuleFunctionTag)
    REFERENCES FiscalModuleFunctionTag (pkFiscalModuleFunctionTag);

      