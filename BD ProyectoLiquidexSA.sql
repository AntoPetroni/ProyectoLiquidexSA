USE [LiquidexSA]
GO
/****** Object:  Table [dbo].[Asignaciones]    Script Date: 20/09/2020 17:14:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asignaciones](
	[id_asignacion] [int] NOT NULL,
	[n_asignacion] [varchar](40) NOT NULL,
	[monto] [numeric](10, 2) NOT NULL,
 CONSTRAINT [pk_asignacion] PRIMARY KEY CLUSTERED 
(
	[id_asignacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AsistenciaUsuarios]    Script Date: 20/09/2020 17:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AsistenciaUsuarios](
	[id_usuario] [int] NOT NULL,
	[fecha] [date] NOT NULL,
	[hora_ingreso] [time](7) NULL,
	[hora_salida] [time](7) NULL,
	[id_estado_asistencia] [int] NULL,
	[comentario] [varchar](500) NULL,
	[borrado] [bit] NULL,
 CONSTRAINT [pk_asistencia] PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC,
	[fecha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Descuentos]    Script Date: 20/09/2020 17:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Descuentos](
	[id_descuento] [int] NOT NULL,
	[n_descuento] [varchar](40) NOT NULL,
	[monto] [numeric](10, 2) NULL,
 CONSTRAINT [pk_descuento] PRIMARY KEY CLUSTERED 
(
	[id_descuento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadosAsistencia]    Script Date: 20/09/2020 17:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadosAsistencia](
	[id_estado_asistencia] [int] NOT NULL,
	[n_estados_asistencia] [varchar](20) NOT NULL,
	[borrado] [bit] NULL,
 CONSTRAINT [pk_estados_asistencia] PRIMARY KEY CLUSTERED 
(
	[id_estado_asistencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstadosUsuarios]    Script Date: 20/09/2020 17:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadosUsuarios](
	[id_estado_usuario] [int] NOT NULL,
	[n_estado_usuario] [varchar](20) NOT NULL,
 CONSTRAINT [estado_u_pk] PRIMARY KEY CLUSTERED 
(
	[id_estado_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Perfiles]    Script Date: 20/09/2020 17:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Perfiles](
	[id_perfil] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[borrado] [bit] NOT NULL,
 CONSTRAINT [PK_Perfiles] PRIMARY KEY CLUSTERED 
(
	[id_perfil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SueldoAsignaciones]    Script Date: 20/09/2020 17:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SueldoAsignaciones](
	[id_usuario] [int] NOT NULL,
	[fecha] [date] NOT NULL,
	[id_asignacion] [int] NOT NULL,
	[monto] [numeric](10, 2) NULL,
	[cantidad] [int] NULL,
 CONSTRAINT [pk_sueldoasignacion] PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC,
	[fecha] ASC,
	[id_asignacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SueldoDescuentos]    Script Date: 20/09/2020 17:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SueldoDescuentos](
	[id_usuario] [int] NOT NULL,
	[fecha] [date] NOT NULL,
	[id_descuento] [int] NOT NULL,
	[cantidad] [int] NULL,
	[monto] [numeric](10, 2) NULL,
 CONSTRAINT [pk_sueldoDescuento] PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC,
	[fecha] ASC,
	[id_descuento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SueldoPerfilHistorico]    Script Date: 20/09/2020 17:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SueldoPerfilHistorico](
	[id_perfil] [int] NOT NULL,
	[fecha] [date] NOT NULL,
	[sueldo] [numeric](10, 2) NOT NULL,
 CONSTRAINT [pk_sueldoPerfil] PRIMARY KEY CLUSTERED 
(
	[id_perfil] ASC,
	[fecha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sueldos]    Script Date: 20/09/2020 17:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sueldos](
	[id_usuario] [int] NOT NULL,
	[fecha] [date] NOT NULL,
	[sueldo_bruto] [numeric](10, 2) NOT NULL,
 CONSTRAINT [pk_sueldo] PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC,
	[fecha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 20/09/2020 17:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[id_usuario] [int] IDENTITY(1,1) NOT NULL,
	[id_perfil] [int] NOT NULL,
	[usuario] [varchar](50) NOT NULL,
	[password] [varchar](10) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[estado] [varchar](1) NOT NULL,
	[borrado] [bit] NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Asignaciones] ([id_asignacion], [n_asignacion], [monto]) VALUES (1, N'Presentismo', CAST(10000.00 AS Numeric(10, 2)))
INSERT [dbo].[Asignaciones] ([id_asignacion], [n_asignacion], [monto]) VALUES (2, N'Hijos', CAST(3000.00 AS Numeric(10, 2)))
INSERT [dbo].[Asignaciones] ([id_asignacion], [n_asignacion], [monto]) VALUES (3, N'Título Universitario', CAST(12000.00 AS Numeric(10, 2)))
INSERT [dbo].[Asignaciones] ([id_asignacion], [n_asignacion], [monto]) VALUES (4, N'Título Terciario', CAST(8000.00 AS Numeric(10, 2)))
INSERT [dbo].[Asignaciones] ([id_asignacion], [n_asignacion], [monto]) VALUES (5, N'Título Técnico', CAST(6000.00 AS Numeric(10, 2)))
INSERT [dbo].[Asignaciones] ([id_asignacion], [n_asignacion], [monto]) VALUES (6, N'Permanencia', CAST(10800.00 AS Numeric(10, 2)))
INSERT [dbo].[Asignaciones] ([id_asignacion], [n_asignacion], [monto]) VALUES (7, N'Productividad', CAST(20000.00 AS Numeric(10, 2)))
INSERT [dbo].[Asignaciones] ([id_asignacion], [n_asignacion], [monto]) VALUES (8, N'Horas Extras', CAST(500.00 AS Numeric(10, 2)))
GO
INSERT [dbo].[AsistenciaUsuarios] ([id_usuario], [fecha], [hora_ingreso], [hora_salida], [id_estado_asistencia], [comentario], [borrado]) VALUES (1, CAST(N'2020-10-09' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time), 2, N'', 0)
INSERT [dbo].[AsistenciaUsuarios] ([id_usuario], [fecha], [hora_ingreso], [hora_salida], [id_estado_asistencia], [comentario], [borrado]) VALUES (2, CAST(N'2020-09-20' AS Date), CAST(N'08:00:00' AS Time), CAST(N'12:00:00' AS Time), 3, N'', 0)
INSERT [dbo].[AsistenciaUsuarios] ([id_usuario], [fecha], [hora_ingreso], [hora_salida], [id_estado_asistencia], [comentario], [borrado]) VALUES (2, CAST(N'2020-10-09' AS Date), CAST(N'13:00:00' AS Time), CAST(N'19:00:00' AS Time), 1, N'', 0)
INSERT [dbo].[AsistenciaUsuarios] ([id_usuario], [fecha], [hora_ingreso], [hora_salida], [id_estado_asistencia], [comentario], [borrado]) VALUES (3, CAST(N'2020-09-15' AS Date), CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 2, N'', 0)
GO
INSERT [dbo].[EstadosAsistencia] ([id_estado_asistencia], [n_estados_asistencia], [borrado]) VALUES (1, N'Presente', 0)
INSERT [dbo].[EstadosAsistencia] ([id_estado_asistencia], [n_estados_asistencia], [borrado]) VALUES (2, N'Ausente', 0)
INSERT [dbo].[EstadosAsistencia] ([id_estado_asistencia], [n_estados_asistencia], [borrado]) VALUES (3, N'Carpeta Médica', 0)
INSERT [dbo].[EstadosAsistencia] ([id_estado_asistencia], [n_estados_asistencia], [borrado]) VALUES (4, N'Licencia x Estudios', 0)
INSERT [dbo].[EstadosAsistencia] ([id_estado_asistencia], [n_estados_asistencia], [borrado]) VALUES (5, N'Licencia Vacaciones', 0)
GO
INSERT [dbo].[EstadosUsuarios] ([id_estado_usuario], [n_estado_usuario]) VALUES (1, N'Activo')
INSERT [dbo].[EstadosUsuarios] ([id_estado_usuario], [n_estado_usuario]) VALUES (2, N'A prueba')
INSERT [dbo].[EstadosUsuarios] ([id_estado_usuario], [n_estado_usuario]) VALUES (3, N'Inactivo')
INSERT [dbo].[EstadosUsuarios] ([id_estado_usuario], [n_estado_usuario]) VALUES (4, N'Baja')
INSERT [dbo].[EstadosUsuarios] ([id_estado_usuario], [n_estado_usuario]) VALUES (5, N'Suspendido')
GO
SET IDENTITY_INSERT [dbo].[Perfiles] ON 

INSERT [dbo].[Perfiles] ([id_perfil], [nombre], [borrado]) VALUES (1, N'Liquidador', 0)
INSERT [dbo].[Perfiles] ([id_perfil], [nombre], [borrado]) VALUES (2, N'Responsable de Asistencia', 0)
SET IDENTITY_INSERT [dbo].[Perfiles] OFF
GO
INSERT [dbo].[SueldoPerfilHistorico] ([id_perfil], [fecha], [sueldo]) VALUES (1, CAST(N'2020-08-01' AS Date), CAST(100000.00 AS Numeric(10, 2)))
INSERT [dbo].[SueldoPerfilHistorico] ([id_perfil], [fecha], [sueldo]) VALUES (2, CAST(N'2020-08-01' AS Date), CAST(50000.00 AS Numeric(10, 2)))
INSERT [dbo].[SueldoPerfilHistorico] ([id_perfil], [fecha], [sueldo]) VALUES (3, CAST(N'2020-08-01' AS Date), CAST(80000.00 AS Numeric(10, 2)))
INSERT [dbo].[SueldoPerfilHistorico] ([id_perfil], [fecha], [sueldo]) VALUES (4, CAST(N'2020-08-01' AS Date), CAST(49000.00 AS Numeric(10, 2)))
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([id_usuario], [id_perfil], [usuario], [password], [email], [estado], [borrado]) VALUES (1, 1, N'Agustin', N'12345', N'agus@gmail.com', N'A', 0)
INSERT [dbo].[Usuarios] ([id_usuario], [id_perfil], [usuario], [password], [email], [estado], [borrado]) VALUES (2, 2, N'Eva', N'12345', N'eva@gmail.com', N'B', 0)
INSERT [dbo].[Usuarios] ([id_usuario], [id_perfil], [usuario], [password], [email], [estado], [borrado]) VALUES (3, 1, N'Anto', N'12345', N'anto@gmail.com', N'A', 0)
INSERT [dbo].[Usuarios] ([id_usuario], [id_perfil], [usuario], [password], [email], [estado], [borrado]) VALUES (4, 2, N'Nico', N'12345', N'nico@gmail.com', N'B', 0)
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
ALTER TABLE [dbo].[AsistenciaUsuarios]  WITH CHECK ADD  CONSTRAINT [fk_asistUsu_usuarios] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[Usuarios] ([id_usuario])
GO
ALTER TABLE [dbo].[AsistenciaUsuarios] CHECK CONSTRAINT [fk_asistUsu_usuarios]
GO
ALTER TABLE [dbo].[AsistenciaUsuarios]  WITH CHECK ADD  CONSTRAINT [fk_id_estado_asistencia] FOREIGN KEY([id_estado_asistencia])
REFERENCES [dbo].[EstadosAsistencia] ([id_estado_asistencia])
GO
ALTER TABLE [dbo].[AsistenciaUsuarios] CHECK CONSTRAINT [fk_id_estado_asistencia]
GO
