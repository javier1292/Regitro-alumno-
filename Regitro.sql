USE [master]
GO
/****** Object:  Database [REGISTRO]    Script Date: 01/03/2021 21:48:29 ******/
CREATE DATABASE [REGISTRO]
go
USE [REGISTRO]
GO
/****** Object:  Table [dbo].[ALUMNO]    Script Date: 01/03/2021 21:48:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ALUMNO](
	[CODIGO] [varchar](5) NOT NULL,
	[NOMBRES] [varchar](100) NULL,
	[APELLIDOS] [varchar](100) NULL,
	[DIRECCION] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ALUMNO] ([CODIGO], [NOMBRES], [APELLIDOS], [DIRECCION]) VALUES (N'IT01', N'BISMARK', N'MONTERO', N'AV. CORALES  SANTO DOMINGO')
INSERT [dbo].[ALUMNO] ([CODIGO], [NOMBRES], [APELLIDOS], [DIRECCION]) VALUES (N'IT02', N'Javier', N'garcia', N'c/1ra #17')
GO
/****** Object:  StoredProcedure [dbo].[Agregar]    Script Date: 01/03/2021 21:48:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[Agregar](
@cod varchar (5),
@nom varchar(100),
@Ape varchar (100),
@dir varchar (200)
)
as
begin 
insert into ALUMNO values (@cod,@nom,@Ape,@dir)
end
GO
/****** Object:  StoredProcedure [dbo].[editar]    Script Date: 01/03/2021 21:48:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[editar] (
@cod varchar (5),
@nom varchar(100),
@Ape varchar (100),
@dir varchar (200)
)
as
begin 
update ALUMNO set NOMBRES =@nom , APELLIDOS =@Ape, DIRECCION =@dir 
where CODIGO =@cod 
end
GO
/****** Object:  StoredProcedure [dbo].[eliminar]    Script Date: 01/03/2021 21:48:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create procedure [dbo].[eliminar] (
@cod varchar (5)

)
as
begin 
delete from ALUMNO where CODIGO =@cod 
end
  
GO
USE [master]
GO
ALTER DATABASE [REGISTRO] SET  READ_WRITE 
GO
