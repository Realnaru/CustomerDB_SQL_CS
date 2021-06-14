CREATE TABLE [dbo].[customer_address] (
    [address_id]    INT            IDENTITY (1, 1) NOT NULL,
    [customer_id]   INT            NOT NULL,
    [address_line]  NVARCHAR (100) NOT NULL,
    [address_line2] NVARCHAR (100) NULL,
    [address_type]  VARCHAR (8)    NOT NULL,
    [city]          NVARCHAR (50)  NOT NULL,
    [postal_code]   VARCHAR (6)    NOT NULL,
    [state]         NVARCHAR (20)  NOT NULL,
    [country]       NVARCHAR (255) NOT NULL,
    CONSTRAINT [pk_address_id] PRIMARY KEY CLUSTERED ([address_id] ASC),
    CHECK ([address_type]='Billing' OR [address_type]='Shipping'),
    CHECK ([country]='Canada' OR [country]='USA'),
    CHECK (len([address_line])<=(100)),
    CHECK (len([address_line2])<=(100)),
    CHECK (len([city])<=(50)),
    CHECK (len([postal_code])<=(6)),
    CHECK (len([state])<(20)),
    CONSTRAINT [fk_customer_id] FOREIGN KEY ([customer_id]) REFERENCES [dbo].[customer] ([customer_id]) ON DELETE CASCADE ON UPDATE CASCADE
);

