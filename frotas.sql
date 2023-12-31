USE [Prova]
GO
/****** Object:  Table [dbo].[docveiculo]    Script Date: 26/10/2023 20:52:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[docveiculo](
	[idDocVeiculo] [int] IDENTITY(1,1) NOT NULL,
	[CRLVativo] [bit] NOT NULL,
	[CRV] [bit] NOT NULL,
	[IPVA] [bit] NOT NULL,
	[CNH] [char](9) NULL,
	[CNHativa] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[idDocVeiculo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estoque]    Script Date: 26/10/2023 20:52:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estoque](
	[idestoque] [int] IDENTITY(1,1) NOT NULL,
	[tabProdutos] [int] NOT NULL,
	[tabAlmoxarifado] [int] NOT NULL,
	[MovimentoEstoque] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idestoque] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[motorista]    Script Date: 26/10/2023 20:52:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[motorista](
	[idmotorista] [int] NOT NULL,
	[NomeCompleto] [text] NOT NULL,
	[RgMotorista] [char](9) NOT NULL,
	[CPFmotorista] [char](11) NOT NULL,
	[TelefoneMotorista] [char](11) NOT NULL,
	[EmailMotorista] [varchar](45) NULL,
	[CNHmotorista] [char](9) NOT NULL,
	[CNHtipo] [varchar](2) NOT NULL,
	[TabelaEndereco] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idmotorista] ASC,
	[TabelaEndereco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tabelaendereco]    Script Date: 26/10/2023 20:52:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tabelaendereco](
	[idTabelaEndereco] [int] IDENTITY(1,1) NOT NULL,
	[Logradouro] [nvarchar](5) NOT NULL,
	[CEP] [char](8) NOT NULL,
	[Endereco] [nvarchar](max) NOT NULL,
	[Bairro] [nvarchar](max) NOT NULL,
	[Complemento] [nvarchar](max) NULL,
	[Municipio] [nvarchar](max) NOT NULL,
	[UF] [varchar](2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idTabelaEndereco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[veiculos]    Script Date: 26/10/2023 20:52:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[veiculos](
	[idveiculos] [int] IDENTITY(1,1) NOT NULL,
	[AnoCarro] [date] NOT NULL,
	[Marca] [nvarchar](50) NOT NULL,
	[Modelo] [nvarchar](50) NOT NULL,
	[PorteVeiculo] [nvarchar](10) NOT NULL,
	[Placa] [varchar](7) NOT NULL,
	[NumeroChassi] [char](17) NOT NULL,
	[CorVeiculo] [nvarchar](20) NOT NULL,
	[Quilometragem] [char](6) NOT NULL,
	[CondicaoVeiculo] [nvarchar](15) NOT NULL,
	[idDocVeiculo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idveiculos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Placa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[docveiculo] ADD  DEFAULT (NULL) FOR [CNH]
GO
ALTER TABLE [dbo].[docveiculo] ADD  DEFAULT (NULL) FOR [CNHativa]
GO
ALTER TABLE [dbo].[motorista] ADD  DEFAULT (NULL) FOR [EmailMotorista]
GO
