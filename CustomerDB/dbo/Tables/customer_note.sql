CREATE TABLE [dbo].[customer_note] (
    [note_id]     INT            IDENTITY (1, 1) NOT NULL,
    [customer_id] INT            NOT NULL,
    [note]        NVARCHAR (255) NOT NULL,
    CONSTRAINT [pk_note] PRIMARY KEY CLUSTERED ([note_id] ASC),
    CHECK (len([note])<=(255)),
    CONSTRAINT [fk_note_customer_id] FOREIGN KEY ([customer_id]) REFERENCES [dbo].[customer] ([customer_id]) ON DELETE CASCADE ON UPDATE CASCADE
);

