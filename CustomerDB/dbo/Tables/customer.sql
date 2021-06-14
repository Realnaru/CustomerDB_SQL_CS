CREATE TABLE [dbo].[customer] (
    [customer_id]           INT            IDENTITY (1, 1) NOT NULL,
    [first_name]            NVARCHAR (50)  NULL,
    [last_name]             NVARCHAR (50)  NOT NULL,
    [customer_phone_number] VARCHAR (15)   NULL,
    [customer_email]        NVARCHAR (100) NULL,
    [total_purchase_amount] MONEY          NULL,
    CONSTRAINT [pk_cutomer_id] PRIMARY KEY CLUSTERED ([customer_id] ASC),
    CHECK (len([first_name])<=(50)),
    CHECK (len([last_name])<=(50)),
    CONSTRAINT [ck_customer_email] CHECK ([customer_email] like '%_@__%.__%'),
    CONSTRAINT [ck_customer_phone_number] CHECK (len([customer_phone_number])<=(15) AND NOT [customer_phone_number] like '%[^0-9]%')
);

