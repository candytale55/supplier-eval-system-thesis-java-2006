/****** Object:  Database ASTERION    Script Date: 26/02/2007 04:32:30 p.m. ******/
IF EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = N'ASTERION')
	DROP DATABASE [ASTERION]
GO

CREATE DATABASE [ASTERION]  ON (NAME = N'ASTERION_Data', FILENAME = N'C:\Archivos de programa\Microsoft SQL Server\MSSQL\data\ASTERION_Data.MDF' , SIZE = 2, FILEGROWTH = 10%) LOG ON (NAME = N'ASTERION_Log', FILENAME = N'C:\Archivos de programa\Microsoft SQL Server\MSSQL\data\ASTERION_Log.LDF' , SIZE = 1, FILEGROWTH = 10%)
 COLLATE Modern_Spanish_CI_AS
GO

exec sp_dboption N'ASTERION', N'autoclose', N'false'
GO

exec sp_dboption N'ASTERION', N'bulkcopy', N'false'
GO

exec sp_dboption N'ASTERION', N'trunc. log', N'false'
GO

exec sp_dboption N'ASTERION', N'torn page detection', N'true'
GO

exec sp_dboption N'ASTERION', N'read only', N'false'
GO

exec sp_dboption N'ASTERION', N'dbo use', N'false'
GO

exec sp_dboption N'ASTERION', N'single', N'false'
GO

exec sp_dboption N'ASTERION', N'autoshrink', N'false'
GO

exec sp_dboption N'ASTERION', N'ANSI null default', N'false'
GO

exec sp_dboption N'ASTERION', N'recursive triggers', N'false'
GO

exec sp_dboption N'ASTERION', N'ANSI nulls', N'false'
GO

exec sp_dboption N'ASTERION', N'concat null yields null', N'false'
GO

exec sp_dboption N'ASTERION', N'cursor close on commit', N'false'
GO

exec sp_dboption N'ASTERION', N'default to local cursor', N'false'
GO

exec sp_dboption N'ASTERION', N'quoted identifier', N'false'
GO

exec sp_dboption N'ASTERION', N'ANSI warnings', N'false'
GO

exec sp_dboption N'ASTERION', N'auto create statistics', N'true'
GO

exec sp_dboption N'ASTERION', N'auto update statistics', N'true'
GO

use [ASTERION]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tProductos_tCat_Productos]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tProductos] DROP CONSTRAINT FK_tProductos_tCat_Productos
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tDet_Entradas_tMedidas]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tDet_Entradas] DROP CONSTRAINT FK_tDet_Entradas_tMedidas
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tDet_Ordenes_Compra_tMedidas]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tDet_Ordenes_Compra] DROP CONSTRAINT FK_tDet_Ordenes_Compra_tMedidas
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tProductos_tMedidas]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tProductos] DROP CONSTRAINT FK_tProductos_tMedidas
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tAlmacenes_tPaises]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tAlmacenes] DROP CONSTRAINT FK_tAlmacenes_tPaises
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tCiudades_tPaises]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tCiudades] DROP CONSTRAINT FK_tCiudades_tPaises
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tEstados_tPaises]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tEstados] DROP CONSTRAINT FK_tEstados_tPaises
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tMonedas_tPaises]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tMonedas] DROP CONSTRAINT FK_tMonedas_tPaises
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tProveedores_tPaises]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tProveedores] DROP CONSTRAINT FK_tProveedores_tPaises
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tAlmacenes_tEstados]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tAlmacenes] DROP CONSTRAINT FK_tAlmacenes_tEstados
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tCiudades_tEstados]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tCiudades] DROP CONSTRAINT FK_tCiudades_tEstados
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tProveedores_tEstados]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tProveedores] DROP CONSTRAINT FK_tProveedores_tEstados
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tOrdenes_Compra_tMonedas]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tOrdenes_Compra] DROP CONSTRAINT FK_tOrdenes_Compra_tMonedas
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tDet_Entradas_tProductos]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tDet_Entradas] DROP CONSTRAINT FK_tDet_Entradas_tProductos
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tDet_Incidentes_tProductos]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tDet_Incidentes] DROP CONSTRAINT FK_tDet_Incidentes_tProductos
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tDet_Ordenes_Compra_tProductos]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tDet_Ordenes_Compra] DROP CONSTRAINT FK_tDet_Ordenes_Compra_tProductos
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tAlmacenes_tCiudades]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tAlmacenes] DROP CONSTRAINT FK_tAlmacenes_tCiudades
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tProveedores_tCiudades]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tProveedores] DROP CONSTRAINT FK_tProveedores_tCiudades
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tEntradas_tAlmacenes]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tEntradas] DROP CONSTRAINT FK_tEntradas_tAlmacenes
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tOrdenes_Compra_tAlmacenes]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tOrdenes_Compra] DROP CONSTRAINT FK_tOrdenes_Compra_tAlmacenes
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tEntradas_tProveedores]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tEntradas] DROP CONSTRAINT FK_tEntradas_tProveedores
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tEval_Desempeno_tProveedores]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tEval_Desempeno] DROP CONSTRAINT FK_tEval_Desempeno_tProveedores
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tEval_Mensual_tProveedores]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tEval_Mensual] DROP CONSTRAINT FK_tEval_Mensual_tProveedores
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tIncidentes_tProveedores]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tIncidentes] DROP CONSTRAINT FK_tIncidentes_tProveedores
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tOrdenes_Compra_tProveedores]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tOrdenes_Compra] DROP CONSTRAINT FK_tOrdenes_Compra_tProveedores
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tDet_Entradas_tEntradas]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tDet_Entradas] DROP CONSTRAINT FK_tDet_Entradas_tEntradas
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tDet_Incidentes_tEntradas]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tDet_Incidentes] DROP CONSTRAINT FK_tDet_Incidentes_tEntradas
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tDet_Eval_Desempeno_tEval_Desempeno]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tDet_Eval_Desempeno] DROP CONSTRAINT FK_tDet_Eval_Desempeno_tEval_Desempeno
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tDet_Incidentes_tIncidentes]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tDet_Incidentes] DROP CONSTRAINT FK_tDet_Incidentes_tIncidentes
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tDet_Entradas_tOrdenes_Compra]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tDet_Entradas] DROP CONSTRAINT FK_tDet_Entradas_tOrdenes_Compra
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tDet_Incidentes_tOrdenes_Compra]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tDet_Incidentes] DROP CONSTRAINT FK_tDet_Incidentes_tOrdenes_Compra
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_tDet_Ordenes_Compra_tOrdenes_Compra]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[tDet_Ordenes_Compra] DROP CONSTRAINT FK_tDet_Ordenes_Compra_tOrdenes_Compra
GO

/****** Object:  Stored Procedure dbo.sp_evaluacion_det_delete    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_evaluacion_det_delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_evaluacion_det_delete]
GO

/****** Object:  Stored Procedure dbo.sp_evaluacion_det_inserta    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_evaluacion_det_inserta]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_evaluacion_det_inserta]
GO

/****** Object:  Stored Procedure dbo.sp_incidente_det_delete    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_incidente_det_delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_incidente_det_delete]
GO

/****** Object:  Stored Procedure dbo.sp_incidente_det_inserta    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_incidente_det_inserta]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_incidente_det_inserta]
GO

/****** Object:  Stored Procedure dbo.sp_ordenes_det_select    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_ordenes_det_select]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_ordenes_det_select]
GO

/****** Object:  Stored Procedure dbo.sp_entradas_delete    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_entradas_delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_entradas_delete]
GO

/****** Object:  Stored Procedure dbo.sp_entradas_inserta    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_entradas_inserta]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_entradas_inserta]
GO

/****** Object:  Stored Procedure dbo.sp_entradas_update    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_entradas_update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_entradas_update]
GO

/****** Object:  Stored Procedure dbo.sp_evaluacion_delete    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_evaluacion_delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_evaluacion_delete]
GO

/****** Object:  Stored Procedure dbo.sp_evaluacion_inserta    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_evaluacion_inserta]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_evaluacion_inserta]
GO

/****** Object:  Stored Procedure dbo.sp_incidente_delete    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_incidente_delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_incidente_delete]
GO

/****** Object:  Stored Procedure dbo.sp_incidente_inserta    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_incidente_inserta]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_incidente_inserta]
GO

/****** Object:  Stored Procedure dbo.sp_incidente_update    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_incidente_update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_incidente_update]
GO

/****** Object:  Stored Procedure dbo.sp_ordenes_delete    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_ordenes_delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_ordenes_delete]
GO

/****** Object:  Stored Procedure dbo.sp_ordenes_inserta    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_ordenes_inserta]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_ordenes_inserta]
GO

/****** Object:  Stored Procedure dbo.sp_ordenes_select    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_ordenes_select]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_ordenes_select]
GO

/****** Object:  Stored Procedure dbo.sp_ordenes_selectBusqAv    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_ordenes_selectBusqAv]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_ordenes_selectBusqAv]
GO

/****** Object:  Stored Procedure dbo.sp_ordenes_update    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_ordenes_update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_ordenes_update]
GO

/****** Object:  Stored Procedure dbo.sp_almacen_dameId    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_almacen_dameId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_almacen_dameId]
GO

/****** Object:  Stored Procedure dbo.sp_almacen_delete    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_almacen_delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_almacen_delete]
GO

/****** Object:  Stored Procedure dbo.sp_almacen_inserta    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_almacen_inserta]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_almacen_inserta]
GO

/****** Object:  Stored Procedure dbo.sp_almacen_select    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_almacen_select]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_almacen_select]
GO

/****** Object:  Stored Procedure dbo.sp_almacen_selectBusqAv    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_almacen_selectBusqAv]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_almacen_selectBusqAv]
GO

/****** Object:  Stored Procedure dbo.sp_almacen_update    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_almacen_update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_almacen_update]
GO

/****** Object:  Stored Procedure dbo.sp_proveedor_dameId    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_proveedor_dameId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_proveedor_dameId]
GO

/****** Object:  Stored Procedure dbo.sp_proveedor_delete    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_proveedor_delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_proveedor_delete]
GO

/****** Object:  Stored Procedure dbo.sp_proveedor_inserta    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_proveedor_inserta]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_proveedor_inserta]
GO

/****** Object:  Stored Procedure dbo.sp_proveedor_select    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_proveedor_select]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_proveedor_select]
GO

/****** Object:  Stored Procedure dbo.sp_proveedor_selectBusqAv    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_proveedor_selectBusqAv]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_proveedor_selectBusqAv]
GO

/****** Object:  Stored Procedure dbo.sp_ciudad_dameId    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_ciudad_dameId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_ciudad_dameId]
GO

/****** Object:  Stored Procedure dbo.sp_ciudad_delete    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_ciudad_delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_ciudad_delete]
GO

/****** Object:  Stored Procedure dbo.sp_ciudad_inserta    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_ciudad_inserta]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_ciudad_inserta]
GO

/****** Object:  Stored Procedure dbo.sp_ciudad_select    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_ciudad_select]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_ciudad_select]
GO

/****** Object:  Stored Procedure dbo.sp_ciudad_selectBusqAv    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_ciudad_selectBusqAv]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_ciudad_selectBusqAv]
GO

/****** Object:  Stored Procedure dbo.sp_ciudad_update    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_ciudad_update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_ciudad_update]
GO

/****** Object:  Stored Procedure dbo.sp_estado_dameId    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_estado_dameId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_estado_dameId]
GO

/****** Object:  Stored Procedure dbo.sp_estado_delete    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_estado_delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_estado_delete]
GO

/****** Object:  Stored Procedure dbo.sp_estado_inserta    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_estado_inserta]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_estado_inserta]
GO

/****** Object:  Stored Procedure dbo.sp_estado_select    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_estado_select]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_estado_select]
GO

/****** Object:  Stored Procedure dbo.sp_estado_selectBusqAv    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_estado_selectBusqAv]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_estado_selectBusqAv]
GO

/****** Object:  Stored Procedure dbo.sp_estado_update    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_estado_update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_estado_update]
GO

/****** Object:  Stored Procedure dbo.sp_moneda_dameId    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_moneda_dameId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_moneda_dameId]
GO

/****** Object:  Stored Procedure dbo.sp_moneda_delete    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_moneda_delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_moneda_delete]
GO

/****** Object:  Stored Procedure dbo.sp_moneda_inserta    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_moneda_inserta]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_moneda_inserta]
GO

/****** Object:  Stored Procedure dbo.sp_moneda_select    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_moneda_select]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_moneda_select]
GO

/****** Object:  Stored Procedure dbo.sp_moneda_selectBusqAv    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_moneda_selectBusqAv]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_moneda_selectBusqAv]
GO

/****** Object:  Stored Procedure dbo.sp_moneda_update    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_moneda_update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_moneda_update]
GO

/****** Object:  Stored Procedure dbo.sp_producto_dameId    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_producto_dameId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_producto_dameId]
GO

/****** Object:  Stored Procedure dbo.sp_producto_delete    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_producto_delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_producto_delete]
GO

/****** Object:  Stored Procedure dbo.sp_producto_inserta    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_producto_inserta]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_producto_inserta]
GO

/****** Object:  Stored Procedure dbo.sp_producto_select    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_producto_select]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_producto_select]
GO

/****** Object:  Stored Procedure dbo.sp_producto_selectBusqAv    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_producto_selectBusqAv]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_producto_selectBusqAv]
GO

/****** Object:  Stored Procedure dbo.sp_cat_prod_delete    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_cat_prod_delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_cat_prod_delete]
GO

/****** Object:  Stored Procedure dbo.sp_cat_prod_inserta    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_cat_prod_inserta]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_cat_prod_inserta]
GO

/****** Object:  Stored Procedure dbo.sp_cat_prod_select    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_cat_prod_select]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_cat_prod_select]
GO

/****** Object:  Stored Procedure dbo.sp_cat_prod_selectBusqAv    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_cat_prod_selectBusqAv]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_cat_prod_selectBusqAv]
GO

/****** Object:  Stored Procedure dbo.sp_cat_prod_update    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_cat_prod_update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_cat_prod_update]
GO

/****** Object:  Stored Procedure dbo.sp_medida_dameId    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_medida_dameId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_medida_dameId]
GO

/****** Object:  Stored Procedure dbo.sp_medida_delete    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_medida_delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_medida_delete]
GO

/****** Object:  Stored Procedure dbo.sp_medida_inserta    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_medida_inserta]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_medida_inserta]
GO

/****** Object:  Stored Procedure dbo.sp_medida_selectBusqAv    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_medida_selectBusqAv]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_medida_selectBusqAv]
GO

/****** Object:  Stored Procedure dbo.sp_medida_update    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_medida_update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_medida_update]
GO

/****** Object:  Stored Procedure dbo.sp_pais_dameId    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_pais_dameId]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_pais_dameId]
GO

/****** Object:  Stored Procedure dbo.sp_pais_delete    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_pais_delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_pais_delete]
GO

/****** Object:  Stored Procedure dbo.sp_pais_inserta    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_pais_inserta]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_pais_inserta]
GO

/****** Object:  Stored Procedure dbo.sp_pais_select    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_pais_select]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_pais_select]
GO

/****** Object:  Stored Procedure dbo.sp_pais_selectBusqAv    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_pais_selectBusqAv]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_pais_selectBusqAv]
GO

/****** Object:  Stored Procedure dbo.sp_pais_update    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_pais_update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_pais_update]
GO

/****** Object:  Stored Procedure dbo.sp_entradas_det_delete    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_entradas_det_delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_entradas_det_delete]
GO

/****** Object:  Stored Procedure dbo.sp_entradas_det_inserta    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_entradas_det_inserta]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_entradas_det_inserta]
GO

/****** Object:  Stored Procedure dbo.sp_entradas_det_update    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_entradas_det_update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_entradas_det_update]
GO

/****** Object:  Stored Procedure dbo.sp_incidente_det_update    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_incidente_det_update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_incidente_det_update]
GO

/****** Object:  Stored Procedure dbo.sp_medida_select    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_medida_select]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_medida_select]
GO

/****** Object:  Stored Procedure dbo.sp_ordenes_det_delete    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_ordenes_det_delete]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_ordenes_det_delete]
GO

/****** Object:  Stored Procedure dbo.sp_ordenes_det_inserta    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_ordenes_det_inserta]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_ordenes_det_inserta]
GO

/****** Object:  Stored Procedure dbo.sp_ordenes_det_update    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_ordenes_det_update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_ordenes_det_update]
GO

/****** Object:  Stored Procedure dbo.sp_producto_update    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_producto_update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_producto_update]
GO

/****** Object:  Stored Procedure dbo.sp_proveedor_update    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_proveedor_update]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_proveedor_update]
GO

/****** Object:  Table [dbo].[tDet_Entradas]    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tDet_Entradas]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tDet_Entradas]
GO

/****** Object:  Table [dbo].[tDet_Eval_Desempeno]    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tDet_Eval_Desempeno]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tDet_Eval_Desempeno]
GO

/****** Object:  Table [dbo].[tDet_Incidentes]    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tDet_Incidentes]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tDet_Incidentes]
GO

/****** Object:  Table [dbo].[tDet_Ordenes_Compra]    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tDet_Ordenes_Compra]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tDet_Ordenes_Compra]
GO

/****** Object:  Table [dbo].[tEntradas]    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tEntradas]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tEntradas]
GO

/****** Object:  Table [dbo].[tEval_Desempeno]    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tEval_Desempeno]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tEval_Desempeno]
GO

/****** Object:  Table [dbo].[tEval_Mensual]    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tEval_Mensual]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tEval_Mensual]
GO

/****** Object:  Table [dbo].[tIncidentes]    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tIncidentes]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tIncidentes]
GO

/****** Object:  Table [dbo].[tOrdenes_Compra]    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tOrdenes_Compra]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tOrdenes_Compra]
GO

/****** Object:  Table [dbo].[tAlmacenes]    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tAlmacenes]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tAlmacenes]
GO

/****** Object:  Table [dbo].[tProveedores]    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tProveedores]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tProveedores]
GO

/****** Object:  Table [dbo].[tCiudades]    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tCiudades]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tCiudades]
GO

/****** Object:  Table [dbo].[tEstados]    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tEstados]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tEstados]
GO

/****** Object:  Table [dbo].[tMonedas]    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tMonedas]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tMonedas]
GO

/****** Object:  Table [dbo].[tProductos]    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tProductos]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tProductos]
GO

/****** Object:  Table [dbo].[tCat_Productos]    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tCat_Productos]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tCat_Productos]
GO

/****** Object:  Table [dbo].[tMedidas]    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tMedidas]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tMedidas]
GO

/****** Object:  Table [dbo].[tPaises]    Script Date: 26/02/2007 04:32:34 p.m. ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[tPaises]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[tPaises]
GO

/****** Object:  Table [dbo].[tCat_Productos]    Script Date: 26/02/2007 04:32:37 p.m. ******/
CREATE TABLE [dbo].[tCat_Productos] (
	[IdCatProd] [char] (4) COLLATE Modern_Spanish_CI_AS NOT NULL ,
	[NomCatProd] [varchar] (40) COLLATE Modern_Spanish_CI_AS NOT NULL ,
	[PercCalidad] [int] NOT NULL ,
	[TolCalidad] [int] NOT NULL ,
	[PercCantidad] [int] NOT NULL ,
	[TolSupCantidad] [int] NOT NULL ,
	[TolInfCantidad] [int] NOT NULL ,
	[PercEntrega] [int] NOT NULL ,
	[TolSupEntrega] [int] NOT NULL ,
	[TolInfEntrega] [int] NOT NULL ,
	[PercDoc] [int] NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[tMedidas]    Script Date: 26/02/2007 04:32:38 p.m. ******/
CREATE TABLE [dbo].[tMedidas] (
	[IdMedida] [char] (3) COLLATE Modern_Spanish_CI_AS NOT NULL ,
	[NomMedida] [varchar] (40) COLLATE Modern_Spanish_CI_AS NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[tPaises]    Script Date: 26/02/2007 04:32:38 p.m. ******/
CREATE TABLE [dbo].[tPaises] (
	[IdPais] [char] (2) COLLATE Modern_Spanish_CI_AS NOT NULL ,
	[NomPais] [varchar] (40) COLLATE Modern_Spanish_CI_AS NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[tEstados]    Script Date: 26/02/2007 04:32:38 p.m. ******/
CREATE TABLE [dbo].[tEstados] (
	[IdEstado] [varchar] (6) COLLATE Modern_Spanish_CI_AS NOT NULL ,
	[NomEstado] [varchar] (40) COLLATE Modern_Spanish_CI_AS NOT NULL ,
	[IdPais] [char] (2) COLLATE Modern_Spanish_CI_AS NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[tMonedas]    Script Date: 26/02/2007 04:32:38 p.m. ******/
CREATE TABLE [dbo].[tMonedas] (
	[IdMoneda] [char] (3) COLLATE Modern_Spanish_CI_AS NOT NULL ,
	[NomMoneda] [varchar] (40) COLLATE Modern_Spanish_CI_AS NOT NULL ,
	[IdPais] [char] (2) COLLATE Modern_Spanish_CI_AS NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[tProductos]    Script Date: 26/02/2007 04:32:38 p.m. ******/
CREATE TABLE [dbo].[tProductos] (
	[IdProd] [varchar] (10) COLLATE Modern_Spanish_CI_AS NOT NULL ,
	[NomProd] [varchar] (50) COLLATE Modern_Spanish_CI_AS NOT NULL ,
	[IdMedida] [char] (3) COLLATE Modern_Spanish_CI_AS NOT NULL ,
	[IdCatProd] [char] (4) COLLATE Modern_Spanish_CI_AS NOT NULL ,
	[FecAltProd] [datetime] NOT NULL ,
	[ObsProd] [varchar] (1000) COLLATE Modern_Spanish_CI_AS NULL ,
	[ConBusq1] [varchar] (20) COLLATE Modern_Spanish_CI_AS NULL ,
	[ConBusq2] [varchar] (20) COLLATE Modern_Spanish_CI_AS NULL ,
	[ConBusq3] [varchar] (20) COLLATE Modern_Spanish_CI_AS NULL ,
	[FecModProd] [datetime] NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[tCiudades]    Script Date: 26/02/2007 04:32:38 p.m. ******/
CREATE TABLE [dbo].[tCiudades] (
	[IdCiudad] [varchar] (6) COLLATE Modern_Spanish_CI_AS NOT NULL ,
	[NomCiudad] [varchar] (40) COLLATE Modern_Spanish_CI_AS NOT NULL ,
	[IdEstado] [varchar] (6) COLLATE Modern_Spanish_CI_AS NULL ,
	[IdPais] [char] (2) COLLATE Modern_Spanish_CI_AS NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[tAlmacenes]    Script Date: 26/02/2007 04:32:39 p.m. ******/
CREATE TABLE [dbo].[tAlmacenes] (
	[IdAlm] [varchar] (10) COLLATE Modern_Spanish_CI_AS NOT NULL ,
	[NomAlm] [varchar] (20) COLLATE Modern_Spanish_CI_AS NOT NULL ,
	[RepAlm] [varchar] (40) COLLATE Modern_Spanish_CI_AS NULL ,
	[DirAlm] [varchar] (50) COLLATE Modern_Spanish_CI_AS NULL ,
	[ColAlm] [varchar] (40) COLLATE Modern_Spanish_CI_AS NULL ,
	[CodPostAlm] [varchar] (6) COLLATE Modern_Spanish_CI_AS NULL ,
	[IdPais] [char] (2) COLLATE Modern_Spanish_CI_AS NOT NULL ,
	[IdEstado] [varchar] (6) COLLATE Modern_Spanish_CI_AS NULL ,
	[IdCiudad] [varchar] (6) COLLATE Modern_Spanish_CI_AS NOT NULL ,
	[TelAlm] [varchar] (14) COLLATE Modern_Spanish_CI_AS NOT NULL ,
	[FecAltAlm] [datetime] NOT NULL ,
	[FecModAlm] [datetime] NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[tProveedores]    Script Date: 26/02/2007 04:32:39 p.m. ******/
CREATE TABLE [dbo].[tProveedores] (
	[IdProv] [varchar] (6) COLLATE Modern_Spanish_CI_AS NOT NULL ,
	[NomProv] [varchar] (50) COLLATE Modern_Spanish_CI_AS NOT NULL ,
	[FecAltProv] [datetime] NOT NULL ,
	[RepProv] [varchar] (40) COLLATE Modern_Spanish_CI_AS NULL ,
	[ConBusq1] [varchar] (20) COLLATE Modern_Spanish_CI_AS NULL ,
	[ConBusq2] [varchar] (20) COLLATE Modern_Spanish_CI_AS NULL ,
	[TaxIdProv] [varchar] (13) COLLATE Modern_Spanish_CI_AS NOT NULL ,
	[DirProv] [varchar] (50) COLLATE Modern_Spanish_CI_AS NOT NULL ,
	[ColProv] [varchar] (40) COLLATE Modern_Spanish_CI_AS NULL ,
	[CodPostProv] [varchar] (6) COLLATE Modern_Spanish_CI_AS NULL ,
	[IdPais] [char] (2) COLLATE Modern_Spanish_CI_AS NOT NULL ,
	[IdEstado] [varchar] (6) COLLATE Modern_Spanish_CI_AS NULL ,
	[IdCiudad] [varchar] (6) COLLATE Modern_Spanish_CI_AS NOT NULL ,
	[TelProv1] [varchar] (14) COLLATE Modern_Spanish_CI_AS NOT NULL ,
	[TelProv2] [varchar] (14) COLLATE Modern_Spanish_CI_AS NULL ,
	[TelProv3] [varchar] (14) COLLATE Modern_Spanish_CI_AS NULL ,
	[FaxProv] [varchar] (14) COLLATE Modern_Spanish_CI_AS NOT NULL ,
	[MailProv] [varchar] (50) COLLATE Modern_Spanish_CI_AS NULL ,
	[DiasCredProv] [int] NOT NULL ,
	[StatusProv] [char] (3) COLLATE Modern_Spanish_CI_AS NOT NULL ,
	[EstadoProv] [char] (2) COLLATE Modern_Spanish_CI_AS NOT NULL ,
	[FecModProv] [datetime] NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[tEntradas]    Script Date: 26/02/2007 04:32:39 p.m. ******/
CREATE TABLE [dbo].[tEntradas] (
	[IdEntrada] [int] NOT NULL ,
	[IdProv] [varchar] (6) COLLATE Modern_Spanish_CI_AS NOT NULL ,
	[FecAltEntrada] [datetime] NOT NULL ,
	[FecEntrada] [datetime] NOT NULL ,
	[DocProv] [varchar] (7) COLLATE Modern_Spanish_CI_AS NULL ,
	[IdAlm] [varchar] (10) COLLATE Modern_Spanish_CI_AS NOT NULL ,
	[FecModEntrada] [datetime] NULL ,
	[ObsEntrada] [varchar] (1000) COLLATE Modern_Spanish_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[tEval_Desempeno]    Script Date: 26/02/2007 04:32:39 p.m. ******/
CREATE TABLE [dbo].[tEval_Desempeno] (
	[IdEval] [int] NOT NULL ,
	[IdProv] [varchar] (6) COLLATE Modern_Spanish_CI_AS NOT NULL ,
	[FecAltEval] [datetime] NOT NULL ,
	[NumEval] [int] NOT NULL ,
	[ObsEval] [varchar] (2000) COLLATE Modern_Spanish_CI_AS NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[tEval_Mensual]    Script Date: 26/02/2007 04:32:39 p.m. ******/
CREATE TABLE [dbo].[tEval_Mensual] (
	[MesEval] [int] NOT NULL ,
	[IdProv] [varchar] (6) COLLATE Modern_Spanish_CI_AS NOT NULL ,
	[PercCalidad] [int] NOT NULL ,
	[PercCantidad] [int] NOT NULL ,
	[DifCantidad] [int] NOT NULL ,
	[PercEntrega] [int] NOT NULL ,
	[DifEntrega] [int] NOT NULL ,
	[PercDocum] [int] NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[tIncidentes]    Script Date: 26/02/2007 04:32:39 p.m. ******/
CREATE TABLE [dbo].[tIncidentes] (
	[IdIncid] [int] NOT NULL ,
	[IdProv] [varchar] (6) COLLATE Modern_Spanish_CI_AS NOT NULL ,
	[FecAltIncid] [datetime] NOT NULL ,
	[DescIncid] [varchar] (2000) COLLATE Modern_Spanish_CI_AS NOT NULL ,
	[CausIncid] [varchar] (2000) COLLATE Modern_Spanish_CI_AS NULL ,
	[AccIncid] [varchar] (2000) COLLATE Modern_Spanish_CI_AS NULL ,
	[FecCompIncid] [datetime] NULL ,
	[FecRealIncid] [datetime] NULL ,
	[StatusIncid] [char] (2) COLLATE Modern_Spanish_CI_AS NOT NULL ,
	[FecModIncid] [datetime] NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[tOrdenes_Compra]    Script Date: 26/02/2007 04:32:39 p.m. ******/
CREATE TABLE [dbo].[tOrdenes_Compra] (
	[IdOrden] [int] NOT NULL ,
	[IdProv] [varchar] (6) COLLATE Modern_Spanish_CI_AS NOT NULL ,
	[FecAltOrden] [datetime] NOT NULL ,
	[FecColOrden] [datetime] NOT NULL ,
	[FecEntOrden] [datetime] NOT NULL ,
	[IdAlm] [varchar] (10) COLLATE Modern_Spanish_CI_AS NOT NULL ,
	[IdMoneda] [char] (3) COLLATE Modern_Spanish_CI_AS NOT NULL ,
	[FecModOrden] [datetime] NULL ,
	[StatusOrden] [char] (2) COLLATE Modern_Spanish_CI_AS NOT NULL ,
	[ObsOrden] [varchar] (1000) COLLATE Modern_Spanish_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[tDet_Entradas]    Script Date: 26/02/2007 04:32:40 p.m. ******/
CREATE TABLE [dbo].[tDet_Entradas] (
	[IdEntrada] [int] NOT NULL ,
	[NumPartEntrada] [int] NOT NULL ,
	[IdProd] [varchar] (10) COLLATE Modern_Spanish_CI_AS NOT NULL ,
	[CantidadE] [decimal](18, 0) NOT NULL ,
	[IdMedida] [char] (3) COLLATE Modern_Spanish_CI_AS NOT NULL ,
	[IdOrden] [int] NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[tDet_Eval_Desempeno]    Script Date: 26/02/2007 04:32:40 p.m. ******/
CREATE TABLE [dbo].[tDet_Eval_Desempeno] (
	[IdEval] [int] NOT NULL ,
	[NumPregEval] [int] NOT NULL ,
	[ResEval] [int] NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[tDet_Incidentes]    Script Date: 26/02/2007 04:32:40 p.m. ******/
CREATE TABLE [dbo].[tDet_Incidentes] (
	[IdIncid] [int] NOT NULL ,
	[NumPartIncid] [int] NOT NULL ,
	[IdEntrada] [int] NOT NULL ,
	[IdOrden] [int] NOT NULL ,
	[IdProd] [varchar] (10) COLLATE Modern_Spanish_CI_AS NOT NULL ,
	[CantIncid] [decimal](18, 0) NOT NULL ,
	[CostoIncid] [decimal](18, 0) NOT NULL ,
	[FecAltPart] [datetime] NOT NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[tDet_Ordenes_Compra]    Script Date: 26/02/2007 04:32:40 p.m. ******/
CREATE TABLE [dbo].[tDet_Ordenes_Compra] (
	[IdOrden] [int] NOT NULL ,
	[NumPartOrden] [int] NOT NULL ,
	[IdProd] [varchar] (10) COLLATE Modern_Spanish_CI_AS NOT NULL ,
	[CantidadO] [decimal](18, 0) NOT NULL ,
	[IdMedida] [char] (3) COLLATE Modern_Spanish_CI_AS NOT NULL ,
	[Precio] [decimal](18, 0) NOT NULL ,
	[Descuento] [int] NOT NULL ,
	[Impuesto] [int] NOT NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[tCat_Productos] WITH NOCHECK ADD 
	CONSTRAINT [PK_tCat_Productos] PRIMARY KEY  CLUSTERED 
	(
		[IdCatProd]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tMedidas] WITH NOCHECK ADD 
	CONSTRAINT [PK_tMedidas] PRIMARY KEY  CLUSTERED 
	(
		[IdMedida]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tPaises] WITH NOCHECK ADD 
	CONSTRAINT [PK_tPaises] PRIMARY KEY  CLUSTERED 
	(
		[IdPais]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tEstados] WITH NOCHECK ADD 
	CONSTRAINT [PK_tEstados] PRIMARY KEY  CLUSTERED 
	(
		[IdEstado]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tMonedas] WITH NOCHECK ADD 
	CONSTRAINT [PK_tMonedas] PRIMARY KEY  CLUSTERED 
	(
		[IdMoneda]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tProductos] WITH NOCHECK ADD 
	CONSTRAINT [PK_tProductos] PRIMARY KEY  CLUSTERED 
	(
		[IdProd]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tCiudades] WITH NOCHECK ADD 
	CONSTRAINT [PK_tCiudades] PRIMARY KEY  CLUSTERED 
	(
		[IdCiudad]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tAlmacenes] WITH NOCHECK ADD 
	CONSTRAINT [PK_tAlmacenes] PRIMARY KEY  CLUSTERED 
	(
		[IdAlm]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tProveedores] WITH NOCHECK ADD 
	CONSTRAINT [PK_tProveedores] PRIMARY KEY  CLUSTERED 
	(
		[IdProv]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tEntradas] WITH NOCHECK ADD 
	CONSTRAINT [PK_tEntradas] PRIMARY KEY  CLUSTERED 
	(
		[IdEntrada]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tEval_Desempeno] WITH NOCHECK ADD 
	CONSTRAINT [PK_tEval_Desempeno] PRIMARY KEY  CLUSTERED 
	(
		[IdEval]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tEval_Mensual] WITH NOCHECK ADD 
	CONSTRAINT [PK_tEval_Mensual] PRIMARY KEY  CLUSTERED 
	(
		[MesEval],
		[IdProv]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tIncidentes] WITH NOCHECK ADD 
	CONSTRAINT [PK_tIncidentes] PRIMARY KEY  CLUSTERED 
	(
		[IdIncid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tOrdenes_Compra] WITH NOCHECK ADD 
	CONSTRAINT [PK_tOrdenes_Compra] PRIMARY KEY  CLUSTERED 
	(
		[IdOrden]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tDet_Entradas] WITH NOCHECK ADD 
	CONSTRAINT [PK_tDet_Entradas] PRIMARY KEY  CLUSTERED 
	(
		[IdEntrada],
		[NumPartEntrada]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tDet_Eval_Desempeno] WITH NOCHECK ADD 
	CONSTRAINT [PK_tDet_Eval_Desempeno] PRIMARY KEY  CLUSTERED 
	(
		[IdEval],
		[NumPregEval]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tDet_Incidentes] WITH NOCHECK ADD 
	CONSTRAINT [PK_tDet_Incidentes] PRIMARY KEY  CLUSTERED 
	(
		[IdIncid],
		[NumPartIncid]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tDet_Ordenes_Compra] WITH NOCHECK ADD 
	CONSTRAINT [PK_tDet_Ordenes_Compra] PRIMARY KEY  CLUSTERED 
	(
		[IdOrden],
		[NumPartOrden]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tMedidas] WITH NOCHECK ADD 
	CONSTRAINT [IX_tMedidas] UNIQUE  NONCLUSTERED 
	(
		[NomMedida]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tPaises] WITH NOCHECK ADD 
	CONSTRAINT [IX_tPaises] UNIQUE  NONCLUSTERED 
	(
		[NomPais]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tEstados] WITH NOCHECK ADD 
	CONSTRAINT [IX_tEstados] UNIQUE  NONCLUSTERED 
	(
		[NomEstado]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tMonedas] WITH NOCHECK ADD 
	CONSTRAINT [IX_tMonedas] UNIQUE  NONCLUSTERED 
	(
		[NomMoneda]
	)  ON [PRIMARY] ,
	CONSTRAINT [IX_tMonedas_1] UNIQUE  NONCLUSTERED 
	(
		[IdPais]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tProductos] WITH NOCHECK ADD 
	CONSTRAINT [DF_tProductos_ConBusq2] DEFAULT ('Categoria general de productos') FOR [ConBusq2],
	CONSTRAINT [DF_tProductos_ConBusq3] DEFAULT ('Categorìa especìfica de productos') FOR [ConBusq3],
	CONSTRAINT [IX_tProductos] UNIQUE  NONCLUSTERED 
	(
		[NomProd]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tCiudades] WITH NOCHECK ADD 
	CONSTRAINT [IX_tCiudades] UNIQUE  NONCLUSTERED 
	(
		[NomCiudad]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tAlmacenes] WITH NOCHECK ADD 
	CONSTRAINT [IX_tAlmacenes] UNIQUE  NONCLUSTERED 
	(
		[NomAlm]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tProveedores] WITH NOCHECK ADD 
	CONSTRAINT [DF_tProveedores_DiasCredProv] DEFAULT (0) FOR [DiasCredProv],
	CONSTRAINT [DF_tProveedores_StatusProv] DEFAULT ('EV') FOR [StatusProv],
	CONSTRAINT [DF_tProveedores_EstadoProv] DEFAULT ('AC') FOR [EstadoProv],
	CONSTRAINT [IX_tProveedores] UNIQUE  NONCLUSTERED 
	(
		[NomProv]
	)  ON [PRIMARY] ,
	CONSTRAINT [IX_tProveedores_1] UNIQUE  NONCLUSTERED 
	(
		[TaxIdProv]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[tOrdenes_Compra] WITH NOCHECK ADD 
	CONSTRAINT [DF_tOrdenes_Compra_StatusOrden] DEFAULT ('AC') FOR [StatusOrden]
GO

ALTER TABLE [dbo].[tDet_Ordenes_Compra] WITH NOCHECK ADD 
	CONSTRAINT [DF_tDet_Ordenes_Compra_CantidadO] DEFAULT (1) FOR [CantidadO],
	CONSTRAINT [DF_tDet_Ordenes_Compra_Precio] DEFAULT (0) FOR [Precio],
	CONSTRAINT [DF_tDet_Ordenes_Compra_Descuento] DEFAULT (0) FOR [Descuento],
	CONSTRAINT [DF_tDet_Ordenes_Compra_Impuesto] DEFAULT (15) FOR [Impuesto]
GO

ALTER TABLE [dbo].[tEstados] ADD 
	CONSTRAINT [FK_tEstados_tPaises] FOREIGN KEY 
	(
		[IdPais]
	) REFERENCES [dbo].[tPaises] (
		[IdPais]
	)
GO

ALTER TABLE [dbo].[tMonedas] ADD 
	CONSTRAINT [FK_tMonedas_tPaises] FOREIGN KEY 
	(
		[IdPais]
	) REFERENCES [dbo].[tPaises] (
		[IdPais]
	)
GO

ALTER TABLE [dbo].[tProductos] ADD 
	CONSTRAINT [FK_tProductos_tCat_Productos] FOREIGN KEY 
	(
		[IdCatProd]
	) REFERENCES [dbo].[tCat_Productos] (
		[IdCatProd]
	),
	CONSTRAINT [FK_tProductos_tMedidas] FOREIGN KEY 
	(
		[IdMedida]
	) REFERENCES [dbo].[tMedidas] (
		[IdMedida]
	)
GO

ALTER TABLE [dbo].[tCiudades] ADD 
	CONSTRAINT [FK_tCiudades_tEstados] FOREIGN KEY 
	(
		[IdEstado]
	) REFERENCES [dbo].[tEstados] (
		[IdEstado]
	),
	CONSTRAINT [FK_tCiudades_tPaises] FOREIGN KEY 
	(
		[IdPais]
	) REFERENCES [dbo].[tPaises] (
		[IdPais]
	)
GO

ALTER TABLE [dbo].[tAlmacenes] ADD 
	CONSTRAINT [FK_tAlmacenes_tCiudades] FOREIGN KEY 
	(
		[IdCiudad]
	) REFERENCES [dbo].[tCiudades] (
		[IdCiudad]
	),
	CONSTRAINT [FK_tAlmacenes_tEstados] FOREIGN KEY 
	(
		[IdEstado]
	) REFERENCES [dbo].[tEstados] (
		[IdEstado]
	),
	CONSTRAINT [FK_tAlmacenes_tPaises] FOREIGN KEY 
	(
		[IdPais]
	) REFERENCES [dbo].[tPaises] (
		[IdPais]
	)
GO

ALTER TABLE [dbo].[tProveedores] ADD 
	CONSTRAINT [FK_tProveedores_tCiudades] FOREIGN KEY 
	(
		[IdCiudad]
	) REFERENCES [dbo].[tCiudades] (
		[IdCiudad]
	),
	CONSTRAINT [FK_tProveedores_tEstados] FOREIGN KEY 
	(
		[IdEstado]
	) REFERENCES [dbo].[tEstados] (
		[IdEstado]
	),
	CONSTRAINT [FK_tProveedores_tPaises] FOREIGN KEY 
	(
		[IdPais]
	) REFERENCES [dbo].[tPaises] (
		[IdPais]
	)
GO

ALTER TABLE [dbo].[tEntradas] ADD 
	CONSTRAINT [FK_tEntradas_tAlmacenes] FOREIGN KEY 
	(
		[IdAlm]
	) REFERENCES [dbo].[tAlmacenes] (
		[IdAlm]
	),
	CONSTRAINT [FK_tEntradas_tProveedores] FOREIGN KEY 
	(
		[IdProv]
	) REFERENCES [dbo].[tProveedores] (
		[IdProv]
	)
GO

ALTER TABLE [dbo].[tEval_Desempeno] ADD 
	CONSTRAINT [FK_tEval_Desempeno_tProveedores] FOREIGN KEY 
	(
		[IdProv]
	) REFERENCES [dbo].[tProveedores] (
		[IdProv]
	)
GO

ALTER TABLE [dbo].[tEval_Mensual] ADD 
	CONSTRAINT [FK_tEval_Mensual_tProveedores] FOREIGN KEY 
	(
		[IdProv]
	) REFERENCES [dbo].[tProveedores] (
		[IdProv]
	)
GO

ALTER TABLE [dbo].[tIncidentes] ADD 
	CONSTRAINT [FK_tIncidentes_tProveedores] FOREIGN KEY 
	(
		[IdProv]
	) REFERENCES [dbo].[tProveedores] (
		[IdProv]
	)
GO

ALTER TABLE [dbo].[tOrdenes_Compra] ADD 
	CONSTRAINT [FK_tOrdenes_Compra_tAlmacenes] FOREIGN KEY 
	(
		[IdAlm]
	) REFERENCES [dbo].[tAlmacenes] (
		[IdAlm]
	),
	CONSTRAINT [FK_tOrdenes_Compra_tMonedas] FOREIGN KEY 
	(
		[IdMoneda]
	) REFERENCES [dbo].[tMonedas] (
		[IdMoneda]
	),
	CONSTRAINT [FK_tOrdenes_Compra_tProveedores] FOREIGN KEY 
	(
		[IdProv]
	) REFERENCES [dbo].[tProveedores] (
		[IdProv]
	)
GO

ALTER TABLE [dbo].[tDet_Entradas] ADD 
	CONSTRAINT [FK_tDet_Entradas_tEntradas] FOREIGN KEY 
	(
		[IdEntrada]
	) REFERENCES [dbo].[tEntradas] (
		[IdEntrada]
	),
	CONSTRAINT [FK_tDet_Entradas_tMedidas] FOREIGN KEY 
	(
		[IdMedida]
	) REFERENCES [dbo].[tMedidas] (
		[IdMedida]
	),
	CONSTRAINT [FK_tDet_Entradas_tOrdenes_Compra] FOREIGN KEY 
	(
		[IdOrden]
	) REFERENCES [dbo].[tOrdenes_Compra] (
		[IdOrden]
	),
	CONSTRAINT [FK_tDet_Entradas_tProductos] FOREIGN KEY 
	(
		[IdProd]
	) REFERENCES [dbo].[tProductos] (
		[IdProd]
	)
GO

ALTER TABLE [dbo].[tDet_Eval_Desempeno] ADD 
	CONSTRAINT [FK_tDet_Eval_Desempeno_tEval_Desempeno] FOREIGN KEY 
	(
		[IdEval]
	) REFERENCES [dbo].[tEval_Desempeno] (
		[IdEval]
	)
GO

ALTER TABLE [dbo].[tDet_Incidentes] ADD 
	CONSTRAINT [FK_tDet_Incidentes_tEntradas] FOREIGN KEY 
	(
		[IdEntrada]
	) REFERENCES [dbo].[tEntradas] (
		[IdEntrada]
	),
	CONSTRAINT [FK_tDet_Incidentes_tIncidentes] FOREIGN KEY 
	(
		[IdIncid]
	) REFERENCES [dbo].[tIncidentes] (
		[IdIncid]
	),
	CONSTRAINT [FK_tDet_Incidentes_tOrdenes_Compra] FOREIGN KEY 
	(
		[IdOrden]
	) REFERENCES [dbo].[tOrdenes_Compra] (
		[IdOrden]
	),
	CONSTRAINT [FK_tDet_Incidentes_tProductos] FOREIGN KEY 
	(
		[IdProd]
	) REFERENCES [dbo].[tProductos] (
		[IdProd]
	)
GO

ALTER TABLE [dbo].[tDet_Ordenes_Compra] ADD 
	CONSTRAINT [FK_tDet_Ordenes_Compra_tMedidas] FOREIGN KEY 
	(
		[IdMedida]
	) REFERENCES [dbo].[tMedidas] (
		[IdMedida]
	),
	CONSTRAINT [FK_tDet_Ordenes_Compra_tOrdenes_Compra] FOREIGN KEY 
	(
		[IdOrden]
	) REFERENCES [dbo].[tOrdenes_Compra] (
		[IdOrden]
	),
	CONSTRAINT [FK_tDet_Ordenes_Compra_tProductos] FOREIGN KEY 
	(
		[IdProd]
	) REFERENCES [dbo].[tProductos] (
		[IdProd]
	)
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_entradas_det_delete    Script Date: 26/02/2007 04:32:40 p.m. ******/
create procedure sp_entradas_det_delete
@IdEntrada int,
@NumPartEntrada int
as
delete from tDet_Entradas
where 
IdEntrada like @IdEntrada
and
NumPartEntrada like @NumPartEntrada

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_entradas_det_inserta    Script Date: 26/02/2007 04:32:40 p.m. ******/
create procedure sp_entradas_det_inserta
@IdEntrada int,
@NumPartEntrada int,
@IdProd varchar(10),
@CantidadE decimal,
@IdOrden int
as
insert into tDet_Entradas values 
(
@IdEntrada,
@NumPartEntrada,
@IdProd,
@CantidadE,
@IdOrden
)

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_entradas_det_update    Script Date: 26/02/2007 04:32:40 p.m. ******/
create procedure sp_entradas_det_update
@IdEntrada int,
@NumPartEntrada int,
@IdProd varchar(10),
@CantidadE decimal,
@IdOrden int
as

UPDATE tDet_Entradas
set IdProd  = @IdProd
where IdEntrada like @IdEntrada
and NumPartEntrada like @NumPartEntrada

UPDATE tDet_Entradas
set CantidadE  = @CantidadE
where IdEntrada like @IdEntrada
and NumPartEntrada like @NumPartEntrada

UPDATE tDet_Entradas
set CantidadE  = @CantidadE
where IdOrden like @IdOrden
and NumPartEntrada like @NumPartEntrada


GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_incidente_det_update    Script Date: 26/02/2007 04:32:40 p.m. ******/
create procedure sp_incidente_det_update
@IdIncid int,
@NumPartIncid int,
@IdEntrada int,
@IdOrden int,
@IdProd varchar(10),
@CantIncid decimal,
@CostoIncid decimal,
@FecAltPart datetime
as

UPDATE tDetIncidentes
set IdEntrada  = @IdEntrada
where IdIncid like @IdIncid
and NumPartIncid like @NumPartIncid

UPDATE tDetIncidentes
set IdOrden  = @IdOrden
where IdIncid like @IdIncid
and NumPartIncid like @NumPartIncid

UPDATE tDetIncidentes
set IdProd  = @IdProd
where IdIncid like @IdIncid
and NumPartIncid like @NumPartIncid

UPDATE tDetIncidentes
set IdEntrada  = @IdEntrada
where IdIncid like @IdIncid
and NumPartIncid like @NumPartIncid

UPDATE tDetIncidentes
set CantIncid  = @CantIncid
where IdIncid like @IdIncid
and NumPartIncid like @NumPartIncid

UPDATE tDetIncidentes
set CostoIncid  = @CostoIncid
where IdIncid like @IdIncid
and NumPartIncid like @NumPartIncid

UPDATE tDetIncidentes
set FecAltPart  = @FecAltPart
where IdIncid like @IdIncid
and NumPartIncid like @NumPartIncid


GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_medida_select    Script Date: 26/02/2007 04:32:40 p.m. ******/
create procedure sp_medida_select
as
(
select 
IdMedida,
NomMedida
from tMedidass  
)

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_ordenes_det_delete    Script Date: 26/02/2007 04:32:40 p.m. ******/
create procedure sp_ordenes_det_delete
@IdOrden int,
@NumPartOrden int
as
delete from tDet_Ordenes_Compra
where 
IdOrden like @IdOrden
and
NumPartOrden like @NumPartOrden

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_ordenes_det_inserta    Script Date: 26/02/2007 04:32:40 p.m. ******/
create procedure sp_ordenes_det_inserta
@IdOrden int,
@NumPartOrden int,
@IdProd varchar(10),
@CantidadO decimal,
@Precio decimal,
@Descuento decimal,
@Impuesto int
as
insert into tDet_Ordenes_Compra values 
(
@IdOrden,
@NumPartOrden,
@IdProd,
@CantidadO,
@Precio,
@Descuento,
@Impuesto
)

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_ordenes_det_update    Script Date: 26/02/2007 04:32:40 p.m. ******/
create procedure sp_ordenes_det_update
@IdOrden int,
@NumPartOrden int,
@IdProd varchar(10),
@CantidadO decimal,
@Precio decimal,
@Descuento decimal,
@Impuesto int
as

UPDATE tDet_Ordenes_Compra
set IdProd  = @IdProd
where IdOrden like @IdOrden
and NumPartOrden like @NumPartOrden

UPDATE tDet_Ordenes_Compra
set CantidadO  = @CantidadO
where IdOrden like @IdOrden
and NumPartOrden like @NumPartOrden

UPDATE tDet_Ordenes_Compra
set Precio  = @Precio
where IdOrden like @IdOrden
and NumPartOrden like @NumPartOrden

UPDATE tDet_Ordenes_Compra
set Descuento  = Descuento
where IdOrden like @IdOrden
and NumPartOrden like @NumPartOrden

UPDATE tDet_Ordenes_Compra
set Impuesto  = @Impuesto
where IdOrden like @IdOrden
and NumPartOrden like @NumPartOrden


GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_producto_update    Script Date: 26/02/2007 04:32:40 p.m. ******/
create procedure sp_producto_update
@IdProd varchar(10),
@NomProd varchar(50),
@IdMedida char(3),
@IdCatProd char(4),
@FecAltProd datetime,
@ObsProd varchar(1000),
@ConBusq1 varchar(20),
@ConBusq2 varchar(20),
@ConBusq3 varchar(20),
@FecModProd datetime

as
UPDATE tProducto
set NomProd  = @NomProd
where IdProd = @IdProd

UPDATE tProducto
set IdMedida  = @IdMedida
where IdProd = @IdProd

UPDATE tProducto
set IdCatProd  = @IdCatProd
where IdProd = @IdProd

UPDATE tProducto
set ObsProd  = @ObsProd
where IdProd = @IdProd

UPDATE tProducto
set ConBusq1  = @ConBusq1
where IdProd = @IdProd

UPDATE tProducto
set ConBusq2  = @ConBusq2
where IdProd = @IdProd

UPDATE tProducto
set ConBusq3  = @ConBusq3
where IdProd = @IdProd

UPDATE tProducto
set FecModProd  = @FecModProd
where IdProd = @IdProd


GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_proveedor_update    Script Date: 26/02/2007 04:32:40 p.m. ******/

create procedure sp_proveedor_update
@IdProv varchar(6),
@NomProv varchar(50),
@RepProv varchar(40),
@ConBusq1 varchar(20),
@ConBusq2 varchar(20),
@DirProv varchar(50),
@ColProv varchar(40),
@CodPostProv varchar(6),
@IdPais char(2),
@IdEstado varchar(6),
@IdCiudad varchar(6),
@TelProv1 varchar(14),
@TelProv2 varchar(14),
@TelProv3 varchar(14),
@FaxProv varchar(14),
@MailProv varchar(50),
@DiasCredProv int,
@EstadoProv char(2),
@FecModProv datetime

as
UPDATE tProveedor
set NomProv  = @NomProv
where IdProv = @IdProv
UPDATE tProveedor
set RepProv  = @RepProv
where IdProv = @IdProv
UPDATE tProveedor
set ConBusq1  = @ConBusq1
where IdProv = @IdProv
UPDATE tProveedor
set ConBusq2  = @ConBusq2
where IdProv = @IdProv
UPDATE tProveedor
set DirProv  = @DirProv
where IdProv = @IdProv
UPDATE tProveedor
set ColProv  = @ColProv
where IdProv = @IdProv
UPDATE tProveedor
set CodPostProv  = @CodPostProv
where IdProv = @IdProv
UPDATE tProveedor
set IdPais  = @IdPais
where IdProv = @IdProv
UPDATE tProveedor
set IdEstado  = @IdEstado
where IdProv = @IdProv
UPDATE tProveedor
set IdCiudad  = @IdCiudad
where IdProv = @IdProv
UPDATE tProveedor
set TelProv1  = @TelProv1
where IdProv = @IdProv
UPDATE tProveedor
set TelProv2  = @TelProv2
where IdProv = @IdProv
UPDATE tProveedor
set TelProv3  = @TelProv3
where IdProv = @IdProv
UPDATE tProveedor
set FaxProv  = @FaxProv
where IdProv = @IdProv
UPDATE tProveedor
set MailProv  = @MailProv
where IdProv = @IdProv
UPDATE tProveedor
set DiasCredProv  = @DiasCredProv
where IdProv = @IdProv
UPDATE tProveedor
set EstadoProv  = @EstadoProv
where IdProv = @IdProv
UPDATE tProveedor
set FecModProv  = @FecModProv
where IdProv = @IdProv

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_cat_prod_delete    Script Date: 26/02/2007 04:32:40 p.m. ******/
create procedure sp_cat_prod_delete
@IdCatProd char(4)
as
delete from tCat_Productos
where IdCatProd= @IdCatProd

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_cat_prod_inserta    Script Date: 26/02/2007 04:32:40 p.m. ******/
create procedure sp_cat_prod_inserta
@IdCatProd char(4),
@NomCatProd varchar(40),
@PercCalidad int,
@TolCalidad int,
@PercCantidad int,
@TolSupCantidad int,
@TolInfCantidad int,
@PercEntrega int,
@TolSupEntrega int,
@TolInfEntrega int,
@PercDoc int
as
insert into tCat_Productos values 
(
@IdCatProd,
@NomCatProd,
@PercCalidad,
@TolCalidad,
@PercCantidad,
@TolSupCantidad,
@TolInfCantidad,
@PercEntrega,
@TolSupEntrega,
@TolInfEntrega,
@PercDoc
)

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_cat_prod_select    Script Date: 26/02/2007 04:32:40 p.m. ******/
create procedure sp_cat_prod_select
as
(
select 
IdCatProd,
NomCatProd,
PercCalidad,
TolCalidad,
PercCantidad,
TolSupCantidad,
TolInfCantidad,
PercEntrega,
TolSupEntrega,
TolInfEntrega,
PercDoc
from tCat_Productos 
)

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_cat_prod_selectBusqAv    Script Date: 26/02/2007 04:32:40 p.m. ******/
create procedure sp_cat_prod_selectBusqAv
@IdCatProd char(4),
@NomCatProd varchar(40),
@PercCalidad int,
@TolCalidad int,
@PercCantidad int,
@TolSupCantidad int,
@TolInfCantidad int,
@PercEntrega int,
@TolSupEntrega int,
@TolInfEntrega int,
@PercDoc int
as
(
select 
IdCatProd,
NomCatProd,
PercCalidad,
TolCalidad,
PercCantidad,
TolSupCantidad,
TolInfCantidad,
PercEntrega,
TolSupEntrega,
TolInfEntrega,
PercDoc
from tCat_Productos
where 
IdCatProd like '%'+@IdCatProd+'%'
or
NomCatProd like '%'+@NomCatProd+'%'
)

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_cat_prod_update    Script Date: 26/02/2007 04:32:40 p.m. ******/


create procedure sp_cat_prod_update
@IdCatProd char(4),
@NomCatProd varchar(40),
@PercCalidad int,
@TolCalidad int,
@PercCantidad int,
@TolSupCantidad int,
@TolInfCantidad int,
@PercEntrega int,
@TolSupEntrega int,
@TolInfEntrega int,
@PercDoc int
as

UPDATE tCat_Productos
set NomCatProd= @NomCatProd
where IdCatProd= @IdCatProd

UPDATE tCat_Productos
set PercCalidad= @PercCalidad
where IdCatProd= @IdCatProd

UPDATE tCat_Productos
set TolCalidad= @TolCalidad
where IdCatProd= @IdCatProd

UPDATE tCat_Productos
set PercCantidad= @PercCantidad
where IdCatProd= @IdCatProd

UPDATE tCat_Productos
set TolSupCantidad= @TolSupCantidad
where IdCatProd= @IdCatProd

UPDATE tCat_Productos
set TolInfCantidad= @TolInfCantidad
where IdCatProd= @IdCatProd

UPDATE tCat_Productos
set PercEntrega= @PercEntrega
where IdCatProd= @IdCatProd

UPDATE tCat_Productos
set TolSupEntrega= @TolSupEntrega
where IdCatProd= @IdCatProd

UPDATE tCat_Productos
set TolInfEntrega= @TolInfEntrega
where IdCatProd= @IdCatProd

UPDATE tCat_Productos
set PercDoc= @PercDoc
where IdCatProd= @IdCatProd


GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_medida_dameId    Script Date: 26/02/2007 04:32:40 p.m. ******/
create procedure sp_medida_dameId
@NomMedida varchar(40)
as
SELECT 
IdMedida
from tMedidas 
where NomMedida like '%'+@NomMedida+'%' 

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_medida_delete    Script Date: 26/02/2007 04:32:40 p.m. ******/
create procedure sp_medida_delete
@IdMedida char(3)
as
delete from tMedidas
where IdMedida= @IdMedida

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_medida_inserta    Script Date: 26/02/2007 04:32:40 p.m. ******/
create procedure sp_medida_inserta
@IdMedida char(3),
@NomMedida varchar(40)
as
insert into tMedidas values 
(
@IdMedida,
@NomMedida
)

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_medida_selectBusqAv    Script Date: 26/02/2007 04:32:40 p.m. ******/
create procedure sp_medida_selectBusqAv
@IdMedida char(3),
@NomMedida varchar(40)
as
(
select 
IdMedida,
NomMedida
from tMedidas 
where 
IdMedida like '%'+@IdMedida+'%'
or
NomMedida like '%'+@NomMedida+'%'
)

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_medida_update    Script Date: 26/02/2007 04:32:40 p.m. ******/
create procedure sp_medida_update
@IdMedida char(3),
@NomMedida varchar(40)
as
UPDATE tMedidas
set NomMedida= @NomMedida
where IdMedida= @IdMedida

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_pais_dameId    Script Date: 26/02/2007 04:32:40 p.m. ******/
create procedure sp_pais_dameId
@NomPais varchar(40)
as
SELECT 
IdPais
from tPaises 
where NomPais like '%'+@NomPais+'%' 

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_pais_delete    Script Date: 26/02/2007 04:32:40 p.m. ******/
create procedure sp_pais_delete
@IdPais char(2)
as
delete from tPaises 
where IdPais=@IdPais

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_pais_inserta    Script Date: 26/02/2007 04:32:40 p.m. ******/
create procedure sp_pais_inserta
@IdPais char(2),
@NomPais varchar(40)

as
insert into tPaises values 
(
@IdPais,
@NomPais
)

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_pais_select    Script Date: 26/02/2007 04:32:40 p.m. ******/
CREATE procedure sp_pais_select
as
(
select 
IdPais,
NomPais
from tPaises 
)
order by NomPais

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_pais_selectBusqAv    Script Date: 26/02/2007 04:32:40 p.m. ******/
CREATE procedure sp_pais_selectBusqAv
@IdPais char(2),
@NomPais varchar(40)
as
(
select 
IdPais,
NomPais
from tPaises 
where 
IdPais like '%'+@IdPais+'%'
and NomPais like '%'+@NomPais+'%' 
)
order by NomPais

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_pais_update    Script Date: 26/02/2007 04:32:40 p.m. ******/
create procedure sp_pais_update
@IdPais char(2),
@NomPais varchar(40)

as
UPDATE tPaises
set NomPais= @NomPais
where IdPais= @IdPais

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_estado_dameId    Script Date: 26/02/2007 04:32:41 p.m. ******/
create procedure sp_estado_dameId
@NomEstado varchar(40)
as
SELECT 
IdEstado
from tEstados 
where NomEstado like '%'+@NomEstado+'%' 

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_estado_delete    Script Date: 26/02/2007 04:32:41 p.m. ******/
create procedure sp_estado_delete
@IdEstado varchar(6)
as
delete from tEstados
where IdEstado=@IdEstado

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_estado_inserta    Script Date: 26/02/2007 04:32:41 p.m. ******/
create procedure sp_estado_inserta
@IdEstado varchar(6),
@NomEstado varchar(40),
@IdPais char(2)

as
insert into tEstados values 
(
@IdEstado,
@NomEstado,
@IdPais
)

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_estado_select    Script Date: 26/02/2007 04:32:41 p.m. ******/
CREATE procedure sp_estado_select
@IdPais char(2)

as
(
select 

estado.IdEstado,
estado.NomEstado,
estado.IdPais,
pais.NomPais

from tEstados estado

inner join tPaises pais
on estado.IdPais = pais.IdPais

where estado.IdPais like @IdPais

)

order by estado.NomEstado

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_estado_selectBusqAv    Script Date: 26/02/2007 04:32:41 p.m. ******/
CREATE procedure sp_estado_selectBusqAv
@IdEstado varchar(6),
@NomEstado varchar(40),
@IdPais char(2),
@NomPais varchar(40)
as
(
select 
estado.IdEstado,
estado.NomEstado,
estado.IdPais,
pais.NomPais
from tEstados estado
inner join tPaises pais
on estado.IdPais = pais.IdPais 
where 
estado.IdEstado like '%'+@IdEstado+'%'
or
estado.NomEstado like '%'+@NomEstado+'%'
or
estado.IdPais like '%'+@IdPais+'%'
or
pais.NomPais like '%'+@NomPais+'%'  
)
order by estado.NomEstado

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_estado_update    Script Date: 26/02/2007 04:32:41 p.m. ******/
CREATE procedure sp_estado_update
@IdEstado varchar(6),
@NomEstado varchar(40),
@IdPais char(2)
as

UPDATE tEstados
set NomEstado= @NomEstado
where IdEstado= @IdEstado

UPDATE tEstados
set IdPais = @IdPais
where IdEstado= @IdEstado

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_moneda_dameId    Script Date: 26/02/2007 04:32:41 p.m. ******/
CREATE procedure sp_moneda_dameId
@NomMoneda varchar(40)
as
SELECT 
IdMoneda
from tMonedas
where NomMoneda like '%'+@NomMoneda+'%' 

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_moneda_delete    Script Date: 26/02/2007 04:32:41 p.m. ******/
create procedure sp_moneda_delete
@IdMoneda char(3)
as
delete from tMonedas
where IdMoneda= @IdMoneda

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_moneda_inserta    Script Date: 26/02/2007 04:32:41 p.m. ******/
create procedure sp_moneda_inserta
@IdMoneda char(3),
@NomMoneda varchar(40),
@IdPais char(2)
as
insert into tMonedas values 
(
@IdMoneda,
@NomMoneda,
@IdPais
)

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_moneda_select    Script Date: 26/02/2007 04:32:41 p.m. ******/
create procedure sp_moneda_select
as
(
select 
moneda.IdMoneda,
moneda.NomMoneda,
moneda.IdPais,
pais.NomPais
from tMonedas moneda
inner join tPaises pais
on moneda.IdPais = pais.IdPais 
)

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_moneda_selectBusqAv    Script Date: 26/02/2007 04:32:41 p.m. ******/

create procedure sp_moneda_selectBusqAv
@IdMoneda char(3),
@NomMoneda varchar(40),
@IdPais char(2),
@NomPais varchar(40)
as
(
select 
moneda.IdMoneda,
moneda.NomMoneda,
moneda.IdPais,
pais.NomPais
from tMonedas moneda
inner join tPaises pais
on moneda.IdPais = pais.IdPais 
where 
moneda.IdMoneda like '%'+@IdMoneda+'%'
or
moneda.NomMoneda like '%'+@NomMoneda+'%'
or
moneda.IdPais like '%'+@IdPais+'%'
or
pais.NomPais like '%'+@NomPais+'%'  
)

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_moneda_update    Script Date: 26/02/2007 04:32:41 p.m. ******/
CREATE procedure sp_moneda_update
@IdMoneda char(3),
@NomMoneda varchar(40),
@IdPais char(2)
as
UPDATE tMonedas
set NomMoneda= @NomMoneda
where IdMoneda= @IdMoneda
UPDATE tMonedas
set NomMoneda = @NomMoneda
where IdMoneda= @IdMoneda
UPDATE tMonedas
set IdPais = @IdPais
where IdMoneda= @IdMoneda

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_producto_dameId    Script Date: 26/02/2007 04:32:41 p.m. ******/
create procedure sp_producto_dameId
@NomProd varchar(50)
as
SELECT 
IdProd
from tProductos 
where NomProd like '%'+@NomProd+'%' 
order by IdProd

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_producto_delete    Script Date: 26/02/2007 04:32:41 p.m. ******/

create procedure sp_producto_delete
@IdProd varchar(10)
as
delete from tProductos
where IdProd= @IdProd

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_producto_inserta    Script Date: 26/02/2007 04:32:41 p.m. ******/
create procedure sp_producto_inserta
@IdProd varchar(10),
@NomProd varchar(50),
@IdMedida char(3),
@IdCatProd char(4),
@FecAltProd datetime,
@ObsProd varchar(1000),
@ConBusq1 varchar(20),
@ConBusq2 varchar(20),
@ConBusq3 varchar(20),
@FecModProd datetime

as
insert into tProductos values 
(
@IdProd,
@NomProd,
@IdMedida,
@IdCatProd,
@FecAltProd,
@ObsProd,
@ConBusq1,
@ConBusq2,
@ConBusq3,
@FecModProd
)

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_producto_select    Script Date: 26/02/2007 04:32:41 p.m. ******/
create procedure sp_producto_select
as
(
select 
prod.IdProd,
prod.NomProd,
prod.IdMedida,
medida.NomMedida,
prod.IdCatProd,
categ.NomCatProd,
prod.FecAltProd,
prod.ObsProd,
prod.ConBusq1,
prod.ConBusq2,
prod.ConBusq3,
prod.FecModProd

from tProductos prod

inner join tMedidas medida
on prod.IdMedida = medida.IdMedida

inner join tCat_Productos categ
on prod.IdCatProd = categ.IdCatProd
)
order by prod.NomProd

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_producto_selectBusqAv    Script Date: 26/02/2007 04:32:41 p.m. ******/
create procedure sp_producto_selectBusqAv
@IdProd varchar(10),
@NomProd varchar(50),
@IdMedida char(3),
@NomMedida varchar(40),
@IdCatProd char(4),
@NomCatProd varchar(40),
@FecAltProdIni datetime,
@FecAltProdFin datetime,
@ObsProd varchar(1000),
@ConBusq1 varchar(20),
@ConBusq2 varchar(20),
@ConBusq3 varchar(20),
@FecModProdIni datetime,
@FecModProdFin datetime
as
(
select 
prod.IdProd,
prod.NomProd,
prod.IdMedida,
medida.NomMedida,
prod.IdCatProd,
categ.NomCatProd,
prod.FecAltProd,
prod.ObsProd,
prod.ConBusq1,
prod.ConBusq2,
prod.ConBusq3,
prod.FecModProd

from tProductos prod

inner join tMedidas medida
on prod.IdMedida = medida.IdMedida

inner join tCat_Productos categ
on prod.IdCatProd = categ.IdCatProd

where 
prod.IdProd like '%'+@IdProd+'%'
or
prod.NomProd like '%'+@NomProd+'%'
or
prod.IdMedida like '%'+@IdMedida+'%'
or
medida.NomMedida like '%'+@NomMedida+'%'
or
prod.IdCatProd like '%'+@IdCatProd+'%'
or
categ.NomCatProd like '%'+@NomCatProd+'%'
or
prod.FecAltProd between '%'+@FecAltProdIni+'%'and'%'+@FecAltProdFin+'%'
or
prod.ObsProd like '%'+@ObsProd+'%'
or
prod.ConBusq1 like '%'+@ConBusq1+'%'
or
prod.ConBusq2 like '%'+@ConBusq2+'%'
or
prod.ConBusq3 like '%'+@ConBusq3+'%'
or
prod.FecAltProd between '%'+@FecAltProdIni+'%'and'%'+@FecAltProdFin+'%'
)
order by prod.NomProd

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_ciudad_dameId    Script Date: 26/02/2007 04:32:41 p.m. ******/
CREATE procedure sp_ciudad_dameId
@NomCiudad varchar(40)
as
SELECT 
IdCiudad
from tCiudades 
where NomCiudad like '%'+@NomCiudad+'%' 

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_ciudad_delete    Script Date: 26/02/2007 04:32:41 p.m. ******/
create procedure sp_ciudad_delete
@IdCiudad varchar(6)
as
delete from tCiudades
where IdCiudad= @IdCiudad

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_ciudad_inserta    Script Date: 26/02/2007 04:32:41 p.m. ******/
CREATE procedure sp_ciudad_inserta
@IdCiudad varchar(6),
@NomCiudad varchar(40),
@IdEstado varchar(6),
@IdPais char(2)

as
insert into tCiudades values 
(
@IdCiudad,
@NomCiudad,
@IdEstado,
@IdPais
)

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_ciudad_select    Script Date: 26/02/2007 04:32:41 p.m. ******/
CREATE procedure sp_ciudad_select
@IdPais char(2),
@IdEstado varchar(6)
as
(
select 
ciudad.IdCiudad,
ciudad.NomCiudad,
ciudad.IdEstado,
estado.NomEstado,
ciudad.IdPais,
pais.NomPais

from tCiudades ciudad

inner join tEstados estado
on ciudad.IdEstado = estado.IdEstado 
inner join tPaises pais
on ciudad.IdPais = pais.IdPais

where ciudad.IdEstado like @IdEstado

)
order by ciudad.NomCiudad

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_ciudad_selectBusqAv    Script Date: 26/02/2007 04:32:41 p.m. ******/
CREATE procedure sp_ciudad_selectBusqAv
@IdCiudad varchar(6),
@NomCiudad varchar(40),
@IdEstado varchar(6),
@NomEstado varchar(40),
@IdPais	char(2),
@NomPais varchar(40)
as
(
select 
ciudad.IdCiudad,
ciudad.NomCiudad,
ciudad.IdEstado,
estado.NomEstado,
ciudad.IdPais,
pais.NomPais
from tCiudades ciudad
inner join tEstados estado
on ciudad.IdEstado = estado.IdEstado 
inner join tPaises pais
on ciudad.IdPais = pais.IdPais
where
ciudad.IdCiudad like '%'+@IdCiudad+'%'
or
ciudad.NomCiudad like '%'+@NomCiudad+'%'
or
ciudad.IdEstado like '%'+@IdEstado+'%'
or
estado.NomEstado like '%'+@NomEstado+'%'
or
ciudad.IdPais like '%'+@IdPais+'%'
or
pais.NomPais like '%'+@NomPais+'%'
)
order by ciudad.NomCiudad

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_ciudad_update    Script Date: 26/02/2007 04:32:41 p.m. ******/
create procedure sp_ciudad_update
@IdCiudad varchar(6),
@NomCiudad varchar(40),
@IdEstado varchar(6),
@IdPais char(2)
as
UPDATE tCiudades
set NomCiudad= @NomCiudad
where IdCiudad= @IdCiudad
UPDATE tCiudades
set IdEstado = @IdEstado
where IdCiudad= @IdCiudad
UPDATE tCiudades
set IdPais = @IdPais
where IdCiudad= @IdCiudad

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_almacen_dameId    Script Date: 26/02/2007 04:32:41 p.m. ******/
create procedure sp_almacen_dameId
@NomAlm varchar(40)
as
SELECT 
IdAlm
from tAlmacenes 
where NomAlm like '%'+@NomAlm+'%' 

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_almacen_delete    Script Date: 26/02/2007 04:32:41 p.m. ******/
create procedure sp_almacen_delete
@IdAlm varchar(10)
as
delete from tAlmacenes
where IdAlm= @IdAlm

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_almacen_inserta    Script Date: 26/02/2007 04:32:41 p.m. ******/
create procedure sp_almacen_inserta
@IdAlm varchar(10),
@NomAlm varchar(20),
@RepAlm varchar(40),
@DirAlm varchar(50),
@ColAlm varchar(40),
@CodPostAlm varchar(6),
@IdPais char(2),
@IdEstado varchar(6),
@IdCiudad varchar(6),
@TelAlm varchar(14),
@FecAltAlm datetime,
@FecModAlm datetime
as
insert into tAlmacenes values 
(
@IdAlm,
@NomAlm,
@RepAlm,
@DirAlm,
@ColAlm,
@CodPostAlm,
@IdPais,
@IdEstado,
@IdCiudad,
@TelAlm,
@FecAltAlm,
@FecModAlm
)

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_almacen_select    Script Date: 26/02/2007 04:32:41 p.m. ******/
create procedure sp_almacen_select
as
(
select 
IdAlm,
NomAlm,
RepAlm,
DirAlm,
ColAlm,
CodPostAlm,
IdPais,
IdEstado,
IdCiudad,
TelAlm,
FecAltAlm,
FecModAlm
from tAlmacenes  
)

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_almacen_selectBusqAv    Script Date: 26/02/2007 04:32:41 p.m. ******/
create procedure sp_almacen_selectBusqAv
@IdAlm varchar(10),
@NomAlm varchar(20),
@RepAlm varchar(40),
@DirAlm varchar(50),
@ColAlm varchar(40),
@CodPostAlm varchar(6),
@IdPais char(2),
@NomPais varchar(40),
@IdEstado varchar(6),
@NomEstado varchar(40),
@IdCiudad varchar(6),
@NomCiudad varchar(40),
@TelAlm varchar(14),
@FecAltAlmIni datetime,
@FecAltAlmFin datetime,
@FecModAlmIni datetime,
@FecModAlmFin datetime
as
(
select 
alm.IdAlm,
alm.NomAlm,
alm.RepAlm,
alm.DirAlm,
alm.ColAlm,
alm.CodPostAlm,
alm.IdPais,
pais.NomPais,
alm.IdEstado,
estado.NomEstado,
alm.IdCiudad,
ciudad.NomCiudad,
alm.TelAlm,
alm.FecAltAlm,
alm.FecModAlm

from tAlmacenes alm

inner join tPaises pais
on alm.IdPais = pais.IdPais
inner join tEstados estado
on alm.IdEstado = estado.IdEstado
inner join tCiudades ciudad
on alm.IdCiudad = ciudad.IdCiudad

where 
alm.IdAlm like '%'+@IdAlm+'%'
and
alm.NomAlm like '%'+@NomAlm+'%'
and
alm.RepAlm like '%'+@RepAlm+'%'
and
alm.DirAlm like '%'+@DirAlm+'%'
and
alm.ColAlm like '%'+@ColAlm+'%'
and
alm.CodPostAlm like '%'+@CodPostAlm+'%'
and
alm.IdPais like '%'+@IdPais+'%'
and
pais.NomPais like '%'+@NomPais+'%'
and
alm.IdEstado like '%'+@IdEstado+'%'
and
estado.NomEstado like '%'+@NomEstado+'%'
and
alm.IdCiudad like '%'+@IdCiudad+'%'
and
ciudad.NomCiudad like '%'+@NomCiudad+'%'
and
alm.TelAlm like '%'+@TelAlm+'%'
and
alm.FecAltAlm between '%'+@FecAltAlmIni+'%'and'%'+@FecAltAlmFin+'%'
and
alm.FecModAlm between '%'+@FecModAlmIni+'%'and'%'+@FecModAlmFin+'%'
)

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_almacen_update    Script Date: 26/02/2007 04:32:41 p.m. ******/
create procedure sp_almacen_update
@IdAlm varchar(10),
@NomAlm varchar(20),
@RepAlm varchar(40),
@DirAlm varchar(50),
@ColAlm varchar(40),
@CodPostAlm varchar(6),
@IdPais char(2),
@IdEstado varchar(6),
@IdCiudad varchar(6),
@TelAlm varchar(14),
@FecAltAlm datetime,
@FecModAlm datetime
as
UPDATE tAlmacenes
set NomAlm= @NomAlm
where IdAlm= @IdAlm

UPDATE tAlmacenes
set RepAlm= @RepAlm
where IdAlm= @IdAlm

UPDATE tAlmacenes
set DirAlm= @DirAlm
where IdAlm= @IdAlm

UPDATE tAlmacenes
set ColAlm= @ColAlm
where IdAlm= @IdAlm

UPDATE tAlmacenes
set CodPostAlm= @CodPostAlm
where IdAlm= @IdAlm

UPDATE tAlmacenes
set IdPais= @IdPais
where IdAlm= @IdAlm

UPDATE tAlmacenes
set IdEstado= @IdEstado
where IdAlm= @IdAlm

UPDATE tAlmacenes
set IdCiudad= @IdCiudad
where IdAlm= @IdAlm

UPDATE tAlmacenes
set TelAlm= @TelAlm
where IdAlm= @IdAlm

UPDATE tAlmacenes
set FecModAlm= @FecModAlm
where IdAlm= @IdAlm

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_proveedor_dameId    Script Date: 26/02/2007 04:32:41 p.m. ******/
create procedure sp_proveedor_dameId
@NomProv varchar(50)
as
SELECT 
IdProv
from tProveedores 
where NomProv like '%'+@NomProv+'%' 
order by IdProv

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_proveedor_delete    Script Date: 26/02/2007 04:32:41 p.m. ******/
create procedure sp_proveedor_delete
@IdProv varchar(6)
as
delete from tProveedores
where IdProv= @IdProv

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_proveedor_inserta    Script Date: 26/02/2007 04:32:41 p.m. ******/
create procedure sp_proveedor_inserta
@IdProv varchar(6),
@NomProv varchar(50),
@FecAltProv datetime,
@RepProv varchar(40),
@ConBusq1 varchar(20),
@ConBusq2 varchar(20),
@TaxIdProv varchar(13),
@DirProv varchar(50),
@ColProv varchar(40),
@CodPostProv varchar(6),
@IdPais char(2),
@IdEstado varchar(6),
@IdCiudad varchar(6),
@TelProv1 varchar(14),
@TelProv2 varchar(14),
@TelProv3 varchar(14),
@FaxProv varchar(14),
@MailProv varchar(50),
@DiasCredProv int,
@StatusProv char(3),
@EstadoProv char(2),
@FecModProv datetime

as
insert into tProveedores values 
(
@IdProv,
@NomProv,
@FecAltProv,
@RepProv,
@ConBusq1,
@ConBusq2,
@TaxIdProv,
@DirProv,
@ColProv,
@CodPostProv,
@IdPais,
@IdEstado,
@IdCiudad,
@TelProv1,
@TelProv2,
@TelProv3,
@FaxProv,
@MailProv,
@DiasCredProv,
@StatusProv,
@EstadoProv,
@FecModProv
)

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_proveedor_select    Script Date: 26/02/2007 04:32:41 p.m. ******/
CREATE procedure sp_proveedor_select
@IdProv varchar(6),
@NomProv varchar(50),
@FecAltInicial datetime,
@FecAltFinal datetime,
@RepProv varchar(40),
@ConBusq1 varchar(20),
@ConBusq2 varchar(20),
@TaxIdProv varchar(13),
@DirProv varchar(50),
@ColProv varchar(40),
@CodPostProv varchar(6),
@IdPais char(2),
@NomPais varchar(50),
@IdEstado varchar(6),
@NomEstado varchar(50),
@IdCiudad varchar(6),
@NomCiudad varchar(50),
@DiasCredProv int,
@StatusProv char(3),
@EstadoProv char(2),
@FecModProvInicial datetime,
@FecModProvFinal datetime
as
SELECT 
prov.IdProv,
prov.NomProv,
prov.FecAltProv,
prov.RepProv,
prov.ConBusq1,
prov.ConBusq2,
prov.TaxIdProv,
prov.DirProv,
prov.ColProv,
prov.IdPais,
pais.NomPais,
prov.IdEstado,
estado.NomEstado,
prov.IdCiudad,
ciudad.NomCiudad,
prov.TelProv1,
prov.TelProv2, 
prov.TelProv3,
prov.FaxProv,
prov.MailProv,
prov.DiasCredProv,
prov.StatusProv,
prov.EstadoProv,
prov.FecModProv

from tProveedores prov

inner join tCiudades ciudad
on prov.IdCiudad = ciudad.IdCiudad
inner join tEstados estado
on prov.IdEstado = estado.IdEstado
inner join tPaises pais
on prov.IdPais = pais.IdPais

order by NomProv

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_proveedor_selectBusqAv    Script Date: 26/02/2007 04:32:41 p.m. ******/
create procedure sp_proveedor_selectBusqAv
@IdProv varchar(6),
@NomProv varchar(50),
@FecAltProvIni datetime,
@FecAltProvFin datetime,
@RepProv varchar(40),
@ConBusq1 varchar(20),
@ConBusq2 varchar(20),
@TaxIdProv varchar(13),
@DirProv varchar(50),
@ColProv varchar(40),
@CodPostProv varchar(6),
@IdPais char(2),
@NomPais varchar(50),
@IdEstado varchar(6),
@NomEstado varchar(50),
@IdCiudad varchar(6),
@NomCiudad varchar(50),
@TelProv1 varchar(13),
@TelProv2 varchar(13),
@TelProv3 varchar(13),
@FaxProv varchar(13),
@MailProv varchar(50),
@DiasCredProv int,
@StatusProv char(3),
@EstadoProv char(2),
@FecModProvIni datetime,
@FecModProvFin datetime
as
SELECT 
prov.IdProv,
prov.NomProv,
prov.FecAltProv,
prov.RepProv,
prov.ConBusq1,
prov.ConBusq2,
prov.TaxIdProv,
prov.DirProv,
prov.ColProv,
prov.IdPais,
pais.NomPais,
prov.IdEstado,
estado.NomEstado,
prov.IdCiudad,
ciudad.NomCiudad,
prov.TelProv1,
prov.TelProv2, 
prov.TelProv3,
prov.FaxProv,
prov.MailProv,
prov.DiasCredProv,
prov.StatusProv,
prov.EstadoProv,
prov.FecModProv

from tProveedores prov

inner join tCiudades ciudad
on prov.IdCiudad = ciudad.IdCiudad
inner join tEstados estado
on prov.IdEstado = estado.IdEstado
inner join tPaises pais
on prov.IdPais = pais.IdPais

where 
prov.IdProv like '%'+@IdProv+'%'
and
prov.NomProv like '%'+@NomProv+'%'
and
prov.FecAltProv between '%'+@FecAltProvIni+'%'and'%'+@FecAltProvFin+'%'
and
prov.RepProv like '%'+@RepProv+'%'
and
prov.ConBusq1 like '%'+@ConBusq1+'%'
and
prov.ConBusq2 like '%'+@ConBusq2+'%'
and
prov.TaxIdProv like '%'+@TaxIdProv+'%'
and
prov.DirProv like '%'+@DirProv+'%'
and
prov.ColProv like '%'+@ColProv+'%'
and
prov.IdPais like '%'+@IdPais+'%'
and
pais.NomPais like '%'+@NomPais+'%'
and
prov.IdEstado like '%'+@IdEstado+'%'
and
estado.NomEstado like '%'+@NomEstado+'%'
and
prov.IdCiudad like '%'+@IdCiudad+'%'
and
ciudad.NomCiudad like '%'+@NomCiudad+'%'
and
prov.TelProv1 like '%'+@TelProv1+'%'
and
prov.TelProv2 like '%'+@TelProv2+'%'
and
prov.TelProv3 like '%'+@TelProv3+'%'
and
prov.FaxProv like '%'+@FaxProv+'%'
and
prov.MailProv like '%'+@MailProv+'%'
and
prov.DiasCredProv like '%'+@DiasCredProv+'%'
and
prov.StatusProv like '%'+@StatusProv+'%'
and
prov.EstadoProv like '%'+@EstadoProv+'%'
and
prov.FecModProv between '%'+@FecModProvIni+'%'and'%'+@FecModProvFin+'%'


order by NomProv

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_entradas_delete    Script Date: 26/02/2007 04:32:41 p.m. ******/
create procedure sp_entradas_delete
@IdEntrada int
as
delete from tEntradas
where 
IdEntrada like @IdEntrada

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_entradas_inserta    Script Date: 26/02/2007 04:32:41 p.m. ******/
create procedure sp_entradas_inserta
@IdEntrada int,
@IdProv varchar(6),
@FecAltEntrada datetime,
@FecEntrada datetime,
@DocProv varchar(7),
@IdAlm varchar(10),
@FecModEntrada datetime,
@ObsEntrada varchar(1000)
as
insert into tEntradas values 
(
@IdEntrada,
@IdProv,
@FecAltEntrada,
@FecEntrada,
@DocProv,
@IdAlm,
@FecModEntrada,
@ObsEntrada
)

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_entradas_update    Script Date: 26/02/2007 04:32:41 p.m. ******/
create procedure sp_entradas_update
@IdEntrada int,
@IdProv varchar(6),
@FecAltEntrada datetime,
@FecEntrada datetime,
@DocProv varchar(7),
@IdAlm varchar(10),
@FecModEntrada datetime,
@ObsEntrada varchar(1000)
as

UPDATE tEntradas
set IdProv  = @IdProv
where IdEntrada = @IdEntrada

UPDATE tEntradas
set FecEntrada  = @FecEntrada
where IdEntrada = @IdEntrada

UPDATE tEntradas
set DocProv  = @DocProv
where IdEntrada = @IdEntrada

UPDATE tEntradas
set IdAlm  = @IdAlm
where IdEntrada = @IdEntrada

UPDATE tEntradas
set FecModEntrada  = @FecModEntrada
where IdEntrada = @IdEntrada

UPDATE tEntradas
set ObsEntrada  = @ObsEntrada
where IdEntrada = @IdEntrada

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_evaluacion_delete    Script Date: 26/02/2007 04:32:41 p.m. ******/
create procedure sp_evaluacion_delete
@IdEval int
as
delete from tEval_Desempeno
where IdEval=@IdEval

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_evaluacion_inserta    Script Date: 26/02/2007 04:32:41 p.m. ******/
create procedure sp_evaluacion_inserta
@IdEval int,
@IdProv varchar(6),
@FecAltEval datetime,
@NumEval int,
@ObsEval varchar(2000)

as
insert into tEval_Desempeno values 
(
@IdEval,
@IdProv,
@FecAltEval,
@NumEval,
@ObsEval
)

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_incidente_delete    Script Date: 26/02/2007 04:32:41 p.m. ******/
create procedure sp_incidente_delete
@IdIncid varchar(6)
as
delete from tIncidentes
where 
IdIncid like @IdIncid

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_incidente_inserta    Script Date: 26/02/2007 04:32:41 p.m. ******/
CREATE procedure sp_incidente_inserta
@IdIncid int,
@IdProv varchar(6),
@FecAltIncid datetime,
@DescIncid varchar(2000),
@CausIncid varchar(2000),
@AccIncid varchar(2000),
@FecCompIncid datetime,
@FecRealIncid datetime,
@StatusIncid char(2),
@FecModIncid datetime
as
insert into tIncidentes values 
(
@IdIncid,
@IdProv,
@FecAltIncid,
@DescIncid,
@CausIncid,
@AccIncid,
@FecCompIncid,
@FecRealIncid,
@StatusIncid,
@FecModIncid
)

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_incidente_update    Script Date: 26/02/2007 04:32:41 p.m. ******/
create procedure sp_incidente_update
@IdIncid int,
@IdProv varchar(6),
@FecAltIncid datetime,
@DescIncid varchar(2000),
@CausIncid varchar(2000),
@AccIncid varchar(2000),
@FecCompIncid datetime,
@FecRealIncid datetime,
@StatusIncid char(2),
@FecModIncid datetime
as

UPDATE tIncidentes
set IdProv  = @IdProv
where IdIncid = @IdIncid

UPDATE tIncidentes
set DescIncid  = @DescIncid
where IdIncid = @IdIncid

UPDATE tIncidentes
set CausIncid  = @CausIncid
where IdIncid = @IdIncid

UPDATE tIncidentes
set AccIncid  = @AccIncid
where IdIncid = @IdIncid

UPDATE tIncidentes
set FecCompIncid  = @FecCompIncid
where IdIncid = @IdIncid

UPDATE tIncidentes
set FecRealIncid  = @FecRealIncid
where IdIncid = @IdIncid

UPDATE tIncidentes
set StatusIncid  = @StatusIncid
where IdIncid = @IdIncid

UPDATE tIncidentes
set FecModIncid  = @FecModIncid
where IdIncid = @IdIncid


GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_ordenes_delete    Script Date: 26/02/2007 04:32:41 p.m. ******/
create procedure sp_ordenes_delete
@IdOrden int
as
delete from tOrdenes_Compra
where 
IdOrden like @IdOrden

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_ordenes_inserta    Script Date: 26/02/2007 04:32:41 p.m. ******/
create procedure sp_ordenes_inserta
@IdOrden int,
@IdProv varchar(6),
@FecAltOrden datetime,
@FecColOrden datetime,
@FecEntOrden datetime,
@IdAlm varchar(10),
@IdMoneda char(3),
@FecModOrden datetime,
@StatusOrden char(2),
@ObsOrden varchar(1000)
as
insert into tOrdenes_Compra values 
(
@IdOrden,
@IdProv,
@FecAltOrden,
@FecColOrden,
@FecEntOrden,
@IdAlm,
@IdMoneda,
@FecModOrden,
@StatusOrden,
@ObsOrden
)

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_ordenes_select    Script Date: 26/02/2007 04:32:41 p.m. ******/
create procedure sp_ordenes_select
@IdOrden int,
@IdProv varchar(6)
as
(
select 
orden.IdOrden,
orden.IdProv,
prov.NomProv,
orden.FecAltOrden,
orden.FecColOrden,
orden.FecEntOrden,
orden.IdAlm,
alm.NomAlm,
orden.IdMoneda,
moneda.NomMoneda,
orden.FecModOrden,
orden.StatusOrden,
orden.ObsOrden

from tOrdenes_Compra orden

inner join tProveedores prov
on orden.IdProv = prov.IdProv 
inner join tAlmacenes alm
on orden.IdAlm = alm.IdAlm
inner join tMonedas moneda
on orden.IdMoneda = moneda.IdMoneda

where
orden.IdOrden like '%'+@IdOrden+'%'
and
orden.IdProv like '%'+@IdProv+'%'

)
order by orden.IdOrden

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_ordenes_selectBusqAv    Script Date: 26/02/2007 04:32:41 p.m. ******/
create procedure sp_ordenes_selectBusqAv
@IdOrden int,
@IdProv varchar(6),
@NomProv varchar(50),
@FecAltOrdenIni datetime,
@FecAltOrdenFin datetime,
@FecColOrdenIni datetime,
@FecColOrdenFin datetime,
@FecEntOrdenIni datetime,
@FecEntOrdenFin datetime,
@IdAlm varchar(10),
@NomAlm varchar(20),
@IdMoneda char(3),
@NomMoneda varchar(40),
@FecModOrdenIni datetime,
@FecModOrdenFin datetime,
@StatusOrden char(2),
@ObsOrden varchar(1000)
as
(
select 
orden.IdOrden,
orden.IdProv,
prov.NomProv,
orden.FecAltOrden,
orden.FecColOrden,
orden.FecEntOrden,
orden.IdAlm,
alm.NomAlm,
orden.IdMoneda,
moneda.NomMoneda,
orden.FecModOrden,
orden.StatusOrden,
orden.ObsOrden

from tOrdenes_Compra orden

inner join tProveedores prov
on orden.IdProv = prov.IdProv 
inner join tAlmacenes alm
on orden.IdAlm = alm.IdAlm
inner join tMonedas moneda
on orden.IdMoneda = moneda.IdMoneda

where
orden.IdOrden like '%'+@IdOrden+'%'
and
orden.IdProv like '%'+@IdProv+'%'
and
prov.NomProv like '%'+@NomProv+'%'
and
orden.FecAltOrden between '%'+@FecAltOrdenIni+'%'and'%'+@FecAltOrdenFin+'%'
and
orden.FecColOrden between '%'+@FecColOrdenIni+'%'and'%'+@FecColOrdenFin+'%'
and
orden.FecEntOrden between '%'+@FecEntOrdenIni+'%'and'%'+@FecEntOrdenFin+'%'
and
orden.IdAlm like '%'+@IdAlm+'%'
and
alm.NomAlm like '%'+@NomAlm+'%'
and
orden.IdMoneda like '%'+@IdMoneda+'%'
and
moneda.NomMoneda like '%'+@NomMoneda+'%'
and
orden.FecModOrden between '%'+@FecModOrdenIni+'%'and'%'+@FecModOrdenFin+'%'
and
orden.StatusOrden like '%'+@StatusOrden+'%'
and
orden.ObsOrden like '%'+@ObsOrden+'%'

)
order by orden.IdOrden

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_ordenes_update    Script Date: 26/02/2007 04:32:41 p.m. ******/
create procedure sp_ordenes_update
@IdOrden int,
@IdProv varchar(6),
@FecAltOrden datetime,
@FecColOrden datetime,
@FecEntOrden datetime,
@IdAlm varchar(10),
@IdMoneda char(3),
@FecModOrden datetime,
@StatusOrden char(2),
@ObsOrden varchar(1000)
as

UPDATE tOrdenes_Compra
set IdProv  = @IdProv
where IdOrden = @IdOrden

UPDATE tOrdenes_Compra
set FecColOrden  = @FecColOrden
where IdOrden = @IdOrden

UPDATE tOrdenes_Compra
set FecEntOrden  = @FecEntOrden
where IdOrden = @IdOrden

UPDATE tOrdenes_Compra
set IdAlm  = @IdAlm
where IdOrden = @IdOrden

UPDATE tOrdenes_Compra
set IdMoneda  = @IdMoneda
where IdOrden = @IdOrden

UPDATE tOrdenes_Compra
set FecModOrden  = @FecModOrden
where IdOrden = @IdOrden

UPDATE tOrdenes_Compra
set StatusOrden  = @StatusOrden
where IdOrden = @IdOrden

UPDATE tOrdenes_Compra
set ObsOrden  = @ObsOrden
where IdOrden = @IdOrden


GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_evaluacion_det_delete    Script Date: 26/02/2007 04:32:41 p.m. ******/
create procedure sp_evaluacion_det_delete
@IdEval int,
@NumPregEval int
as
delete from tDet_Eval_Desempeno
where 
IdEval like @IdEval
and
NumPregEval like @NumPregEval

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_evaluacion_det_inserta    Script Date: 26/02/2007 04:32:41 p.m. ******/

create procedure sp_evaluacion_det_inserta
@IdEval int,
@NumPreg int,
@ResEval int

as
insert into tDet_Eval_Desempeno values 
(
@IdEval,
@NumPreg,
@ResEval
)

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_incidente_det_delete    Script Date: 26/02/2007 04:32:41 p.m. ******/
create procedure sp_incidente_det_delete
@IdIncid int,
@NumPartIncid int
as
delete from tDet_Incidentes
where 
IdIncid like @IdIncid
and
NumPartIncid like @NumPartIncid

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_incidente_det_inserta    Script Date: 26/02/2007 04:32:41 p.m. ******/
create procedure sp_incidente_det_inserta
@IdIncid int,
@NumPartIncid int,
@IdEntrada int,
@IdOrden int,
@IdProd varchar(10),
@CantIncid decimal,
@CostoIncid decimal,
@FecAltPart datetime
as
insert into tDet_Incidentes values 
(
@IdIncid,
@NumPartIncid,
@IdEntrada,
@IdOrden,
@IdProd,
@CantIncid,
@CostoIncid,
@FecAltPart
)

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO

/****** Object:  Stored Procedure dbo.sp_ordenes_det_select    Script Date: 26/02/2007 04:32:41 p.m. ******/
create procedure sp_ordenes_det_select
@IdOrden int,
@NumPartOrden int
as
(
select 
ordendet.IdOrden,
ordendet.NumPartOrden,
ordendet.IdProd,
prod.NomProd,
ordendet.CantidadO,
ordendet.IdMedida,
medida.NomMedida,
ordendet.Precio,
--ordendet.CantidadO*ordendet.Precio as 'subtotal',
ordendet.Descuento,
((ordendet.CantidadO*ordendet.Precio)*ordendet.Descuento)/100 as 'descuento',
--'subtotal'-'descuento' as 'subtotal con descuento',
--((ordendet.CantidadO*ordendet.Precio)-((ordendet.CantidadO*ordendet.Precio)*ordendet.Descuento)) as'Subtotal con descuento',
ordendet.Impuesto
--('subtotal con descuento'*ordendet.Impuesto)/100 as 'IVA',
--((ordendet.CantidadO*ordendet.Precio)-((ordendet.CantidadO*ordendet.Precio)*ordendet.Descuento))*ordendet.Impuesto)/100 as 'IVA',
--'subtotal con descuento'+'IVA' as 'TOTAL'
--(ordendet.CantidadO*ordendet.Precio)-((ordendet.CantidadO*ordendet.Precio)*ordendet.Descuento))+(((ordendet.CantidadO*ordendet.Precio)-((ordendet.CantidadO*ordendet.Precio)*ordendet.Descuento))*ordendet.Impuesto)/100) as 'TOTAL'

from tDet_Ordenes_Compra ordendet

inner join tProductos prod
on ordendet.IdProd = prod.IdProd 
inner join tMedidas medida
on ordendet.IdMedida = medida.IdMedida 


where
ordendet.IdOrden like '%'+@IdOrden+'%'

)
order by ordendet.NumPartOrden

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO


exec sp_addextendedproperty N'MS_Description', N'Clave de la categoría de productos', N'user', N'dbo', N'table', N'tCat_Productos', N'column', N'IdCatProd'
GO
exec sp_addextendedproperty N'MS_Description', N'Nombre de la categoría de productos', N'user', N'dbo', N'table', N'tCat_Productos', N'column', N'NomCatProd'
GO
exec sp_addextendedproperty N'MS_Description', N'Porcentaje de evaluación en Calidad (sobre 100%)', N'user', N'dbo', N'table', N'tCat_Productos', N'column', N'PercCalidad'
GO
exec sp_addextendedproperty N'MS_Description', N'Porcentaje en Cantidad (Evaluación sobre 100%)', N'user', N'dbo', N'table', N'tCat_Productos', N'column', N'PercCantidad'
GO
exec sp_addextendedproperty N'MS_Description', N'Porcentaje de evaluación en la entrega de documentación', N'user', N'dbo', N'table', N'tCat_Productos', N'column', N'PercDoc'
GO
exec sp_addextendedproperty N'MS_Description', N'Porcentaje para evaluación a Tiempo de Entrega (Sobre 100%)', N'user', N'dbo', N'table', N'tCat_Productos', N'column', N'PercEntrega'
GO
exec sp_addextendedproperty N'MS_Description', N'Tolerancia de fallos en calidad', N'user', N'dbo', N'table', N'tCat_Productos', N'column', N'TolCalidad'
GO
exec sp_addextendedproperty N'MS_Description', N'Tolerancia en faltante en cantidad', N'user', N'dbo', N'table', N'tCat_Productos', N'column', N'TolInfCantidad'
GO
exec sp_addextendedproperty N'MS_Description', N'Tolerancia en entregas atrasadas', N'user', N'dbo', N'table', N'tCat_Productos', N'column', N'TolInfEntrega'
GO
exec sp_addextendedproperty N'MS_Description', N'Tolerancia en excedente en cantidad', N'user', N'dbo', N'table', N'tCat_Productos', N'column', N'TolSupCantidad'
GO
exec sp_addextendedproperty N'MS_Description', N'Tolerancia en entregas anticipadas', N'user', N'dbo', N'table', N'tCat_Productos', N'column', N'TolSupEntrega'


GO


exec sp_addextendedproperty N'MS_Description', N'Clave unidad de medida (abreviatura)', N'user', N'dbo', N'table', N'tMedidas', N'column', N'IdMedida'
GO
exec sp_addextendedproperty N'MS_Description', N'Nombre unidad de medida', N'user', N'dbo', N'table', N'tMedidas', N'column', N'NomMedida'


GO


exec sp_addextendedproperty N'MS_Description', N'Clave del pais', N'user', N'dbo', N'table', N'tPaises', N'column', N'IdPais'
GO
exec sp_addextendedproperty N'MS_Description', N'Nombre del pais', N'user', N'dbo', N'table', N'tPaises', N'column', N'NomPais'


GO


exec sp_addextendedproperty N'MS_Description', N'Cñave del estado', N'user', N'dbo', N'table', N'tEstados', N'column', N'IdEstado'
GO
exec sp_addextendedproperty N'MS_Description', N'Clave del Paìs', N'user', N'dbo', N'table', N'tEstados', N'column', N'IdPais'
GO
exec sp_addextendedproperty N'MS_Description', N'Nombre del estado', N'user', N'dbo', N'table', N'tEstados', N'column', N'NomEstado'


GO


exec sp_addextendedproperty N'MS_Description', N'Clave de moneda', N'user', N'dbo', N'table', N'tMonedas', N'column', N'IdMoneda'
GO
exec sp_addextendedproperty N'MS_Description', N'Nombre de la moneda', N'user', N'dbo', N'table', N'tMonedas', N'column', N'NomMoneda'


GO


exec sp_addextendedproperty N'MS_Description', N'Palabra clave para búsqueda', N'user', N'dbo', N'table', N'tProductos', N'column', N'ConBusq1'
GO
exec sp_addextendedproperty N'MS_Description', N'Fecha de creación del producto', N'user', N'dbo', N'table', N'tProductos', N'column', N'FecAltProd'
GO
exec sp_addextendedproperty N'MS_Description', N'Fecha de última modificación', N'user', N'dbo', N'table', N'tProductos', N'column', N'FecModProd'
GO
exec sp_addextendedproperty N'MS_Description', N'Clave de categorìa de productos', N'user', N'dbo', N'table', N'tProductos', N'column', N'IdCatProd'
GO
exec sp_addextendedproperty N'MS_Description', N'Clave de Unidad de Medida', N'user', N'dbo', N'table', N'tProductos', N'column', N'IdMedida'
GO
exec sp_addextendedproperty N'MS_Description', N'Clave del Producto', N'user', N'dbo', N'table', N'tProductos', N'column', N'IdProd'
GO
exec sp_addextendedproperty N'MS_Description', N'Nombre del Producto', N'user', N'dbo', N'table', N'tProductos', N'column', N'NomProd'
GO
exec sp_addextendedproperty N'MS_Description', N'Descripción extensa del producto', N'user', N'dbo', N'table', N'tProductos', N'column', N'ObsProd'


GO


exec sp_addextendedproperty N'MS_Description', N'Clave de la ciudad', N'user', N'dbo', N'table', N'tCiudades', N'column', N'IdCiudad'
GO
exec sp_addextendedproperty N'MS_Description', N'Clave del Estado', N'user', N'dbo', N'table', N'tCiudades', N'column', N'IdEstado'
GO
exec sp_addextendedproperty N'MS_Description', N'Clave del Pais', N'user', N'dbo', N'table', N'tCiudades', N'column', N'IdPais'
GO
exec sp_addextendedproperty N'MS_Description', N'Nombre de la ciudad', N'user', N'dbo', N'table', N'tCiudades', N'column', N'NomCiudad'


GO


exec sp_addextendedproperty N'MS_Description', N'Código Postal del Almacén', N'user', N'dbo', N'table', N'tAlmacenes', N'column', N'CodPostAlm'
GO
exec sp_addextendedproperty N'MS_Description', N'Colonia del Almacen', N'user', N'dbo', N'table', N'tAlmacenes', N'column', N'ColAlm'
GO
exec sp_addextendedproperty N'MS_Description', N'Dirección del almacén', N'user', N'dbo', N'table', N'tAlmacenes', N'column', N'DirAlm'
GO
exec sp_addextendedproperty N'MS_Description', N'Fecha de la última modificación al almacén', N'user', N'dbo', N'table', N'tAlmacenes', N'column', N'FecModAlm'
GO
exec sp_addextendedproperty N'MS_Description', N'Clave del Almacén', N'user', N'dbo', N'table', N'tAlmacenes', N'column', N'IdAlm'
GO
exec sp_addextendedproperty N'MS_Description', N'Clave de la ciudad del almacén', N'user', N'dbo', N'table', N'tAlmacenes', N'column', N'IdCiudad'
GO
exec sp_addextendedproperty N'MS_Description', N'Clave del Estado del Almacén', N'user', N'dbo', N'table', N'tAlmacenes', N'column', N'IdEstado'
GO
exec sp_addextendedproperty N'MS_Description', N'Clave de Pais del Almacén', N'user', N'dbo', N'table', N'tAlmacenes', N'column', N'IdPais'
GO
exec sp_addextendedproperty N'MS_Description', N'Nombre del Almacén', N'user', N'dbo', N'table', N'tAlmacenes', N'column', N'NomAlm'
GO
exec sp_addextendedproperty N'MS_Description', N'Representante en el almacen', N'user', N'dbo', N'table', N'tAlmacenes', N'column', N'RepAlm'
GO
exec sp_addextendedproperty N'MS_Description', N'Teléfono del almacén', N'user', N'dbo', N'table', N'tAlmacenes', N'column', N'TelAlm'


GO


exec sp_addextendedproperty N'MS_Description', N'Código Postal del Proveedor', N'user', N'dbo', N'table', N'tProveedores', N'column', N'CodPostProv'
GO
exec sp_addextendedproperty N'MS_Description', N'Colonia del proveedor', N'user', N'dbo', N'table', N'tProveedores', N'column', N'ColProv'
GO
exec sp_addextendedproperty N'MS_Description', N'Nombre comercial del proveedor', N'user', N'dbo', N'table', N'tProveedores', N'column', N'ConBusq1'
GO
exec sp_addextendedproperty N'MS_Description', N'Palabra de búsqueda del proveedor', N'user', N'dbo', N'table', N'tProveedores', N'column', N'ConBusq2'
GO
exec sp_addextendedproperty N'MS_Description', N'Dias de crédito del proveedor', N'user', N'dbo', N'table', N'tProveedores', N'column', N'DiasCredProv'
GO
exec sp_addextendedproperty N'MS_Description', N'Direccion del proveedor', N'user', N'dbo', N'table', N'tProveedores', N'column', N'DirProv'
GO
exec sp_addextendedproperty N'MS_Description', N'Estadp del proveedor (AC= Activo, IN=Inactivo)', N'user', N'dbo', N'table', N'tProveedores', N'column', N'EstadoProv'
GO
exec sp_addextendedproperty N'MS_Description', N'Fax del proveedor', N'user', N'dbo', N'table', N'tProveedores', N'column', N'FaxProv'
GO
exec sp_addextendedproperty N'MS_Description', N'Fecha de creación del proveedor', N'user', N'dbo', N'table', N'tProveedores', N'column', N'FecAltProv'
GO
exec sp_addextendedproperty N'MS_Description', N'Fecha de última modificación al proveedor', N'user', N'dbo', N'table', N'tProveedores', N'column', N'FecModProv'
GO
exec sp_addextendedproperty N'MS_Description', N'Clave de la ciudad', N'user', N'dbo', N'table', N'tProveedores', N'column', N'IdCiudad'
GO
exec sp_addextendedproperty N'MS_Description', N'Clave del estado', N'user', N'dbo', N'table', N'tProveedores', N'column', N'IdEstado'
GO
exec sp_addextendedproperty N'MS_Description', N'Clave del pais', N'user', N'dbo', N'table', N'tProveedores', N'column', N'IdPais'
GO
exec sp_addextendedproperty N'MS_Description', N'Clave del proveedor', N'user', N'dbo', N'table', N'tProveedores', N'column', N'IdProv'
GO
exec sp_addextendedproperty N'MS_Description', N'Nombre del proveedor', N'user', N'dbo', N'table', N'tProveedores', N'column', N'NomProv'
GO
exec sp_addextendedproperty N'MS_Description', N'Representante del proveedor', N'user', N'dbo', N'table', N'tProveedores', N'column', N'RepProv'
GO
exec sp_addextendedproperty N'MS_Description', N'Status proveedor (EVA=En evaluación, CON=Condicionado, APR=Aprobado)', N'user', N'dbo', N'table', N'tProveedores', N'column', N'StatusProv'
GO
exec sp_addextendedproperty N'MS_Description', N'Número de identificación fiscal del proveedor', N'user', N'dbo', N'table', N'tProveedores', N'column', N'TaxIdProv'
GO
exec sp_addextendedproperty N'MS_Description', N'Teléfono 1 del proveedor', N'user', N'dbo', N'table', N'tProveedores', N'column', N'TelProv1'
GO
exec sp_addextendedproperty N'MS_Description', N'Teléfono 2 del proveedor', N'user', N'dbo', N'table', N'tProveedores', N'column', N'TelProv2'
GO
exec sp_addextendedproperty N'MS_Description', N'Teléfono 3 del proveedor', N'user', N'dbo', N'table', N'tProveedores', N'column', N'TelProv3'


GO


exec sp_addextendedproperty N'MS_Description', N'Factura, Remisión o documento de entrega', N'user', N'dbo', N'table', N'tEntradas', N'column', N'DocProv'
GO
exec sp_addextendedproperty N'MS_Description', N'Fecha de creación de la entrada', N'user', N'dbo', N'table', N'tEntradas', N'column', N'FecAltEntrada'
GO
exec sp_addextendedproperty N'MS_Description', N'Fecha de entrada del producto', N'user', N'dbo', N'table', N'tEntradas', N'column', N'FecEntrada'
GO
exec sp_addextendedproperty N'MS_Description', N'Fecha de última modificación', N'user', N'dbo', N'table', N'tEntradas', N'column', N'FecModEntrada'
GO
exec sp_addextendedproperty N'MS_Description', N'Clave del Almacén', N'user', N'dbo', N'table', N'tEntradas', N'column', N'IdAlm'
GO
exec sp_addextendedproperty N'MS_Description', N'Número de entrada', N'user', N'dbo', N'table', N'tEntradas', N'column', N'IdEntrada'
GO
exec sp_addextendedproperty N'MS_Description', N'Clave del proveedor', N'user', N'dbo', N'table', N'tEntradas', N'column', N'IdProv'
GO
exec sp_addextendedproperty N'MS_Description', N'Observaciones durante la entrada', N'user', N'dbo', N'table', N'tEntradas', N'column', N'ObsEntrada'


GO


exec sp_addextendedproperty N'MS_Description', N'Fecha de la evaluación', N'user', N'dbo', N'table', N'tEval_Desempeno', N'column', N'FecAltEval'
GO
exec sp_addextendedproperty N'MS_Description', N'Clave de la evaluación del desempeño', N'user', N'dbo', N'table', N'tEval_Desempeno', N'column', N'IdEval'
GO
exec sp_addextendedproperty N'MS_Description', N'Clave del proveedor', N'user', N'dbo', N'table', N'tEval_Desempeno', N'column', N'IdProv'
GO
exec sp_addextendedproperty N'MS_Description', N'Número de evaluación en el año', N'user', N'dbo', N'table', N'tEval_Desempeno', N'column', N'NumEval'
GO
exec sp_addextendedproperty N'MS_Description', N'Observaciones de la evaluación', N'user', N'dbo', N'table', N'tEval_Desempeno', N'column', N'ObsEval'


GO


exec sp_addextendedproperty N'MS_Description', N'Acciones para corregir el incidente', N'user', N'dbo', N'table', N'tIncidentes', N'column', N'AccIncid'
GO
exec sp_addextendedproperty N'MS_Description', N'Causa del incidente', N'user', N'dbo', N'table', N'tIncidentes', N'column', N'CausIncid'
GO
exec sp_addextendedproperty N'MS_Description', N'Descripción de incidente', N'user', N'dbo', N'table', N'tIncidentes', N'column', N'DescIncid'
GO
exec sp_addextendedproperty N'MS_Description', N'Fecha de creación de incidente', N'user', N'dbo', N'table', N'tIncidentes', N'column', N'FecAltIncid'
GO
exec sp_addextendedproperty N'MS_Description', N'Fecha de compromiso del proveedor para cierre de incidente', N'user', N'dbo', N'table', N'tIncidentes', N'column', N'FecCompIncid'
GO
exec sp_addextendedproperty N'MS_Description', N'Fecha última modificación del incidente', N'user', N'dbo', N'table', N'tIncidentes', N'column', N'FecModIncid'
GO
exec sp_addextendedproperty N'MS_Description', N'Fecha real de cierre de incidente', N'user', N'dbo', N'table', N'tIncidentes', N'column', N'FecRealIncid'
GO
exec sp_addextendedproperty N'MS_Description', N'Número de incidente', N'user', N'dbo', N'table', N'tIncidentes', N'column', N'IdIncid'
GO
exec sp_addextendedproperty N'MS_Description', N'Clave de proveedor', N'user', N'dbo', N'table', N'tIncidentes', N'column', N'IdProv'
GO
exec sp_addextendedproperty N'MS_Description', N'Status de incidente (AB= Abierto, CE= Cerrado, RE = Recurrente)', N'user', N'dbo', N'table', N'tIncidentes', N'column', N'StatusIncid'


GO


exec sp_addextendedproperty N'MS_Description', N'Fecha de creación de la orden de compra', N'user', N'dbo', N'table', N'tOrdenes_Compra', N'column', N'FecAltOrden'
GO
exec sp_addextendedproperty N'MS_Description', N'Fecha de colocación de la órden de compra', N'user', N'dbo', N'table', N'tOrdenes_Compra', N'column', N'FecColOrden'
GO
exec sp_addextendedproperty N'MS_Description', N'Fecha de entrega para la órden de compra', N'user', N'dbo', N'table', N'tOrdenes_Compra', N'column', N'FecEntOrden'
GO
exec sp_addextendedproperty N'MS_Description', N'Fecha de última modificación de la orden', N'user', N'dbo', N'table', N'tOrdenes_Compra', N'column', N'FecModOrden'
GO
exec sp_addextendedproperty N'MS_Description', N'Clave del almacén', N'user', N'dbo', N'table', N'tOrdenes_Compra', N'column', N'IdAlm'
GO
exec sp_addextendedproperty N'MS_Description', N'Clave de la moneda', N'user', N'dbo', N'table', N'tOrdenes_Compra', N'column', N'IdMoneda'
GO
exec sp_addextendedproperty N'MS_Description', N'Número de orden de compra', N'user', N'dbo', N'table', N'tOrdenes_Compra', N'column', N'IdOrden'
GO
exec sp_addextendedproperty N'MS_Description', N'Clave del proveedor', N'user', N'dbo', N'table', N'tOrdenes_Compra', N'column', N'IdProv'
GO
exec sp_addextendedproperty N'MS_Description', N'Observaciones de la órden de compra', N'user', N'dbo', N'table', N'tOrdenes_Compra', N'column', N'ObsOrden'
GO
exec sp_addextendedproperty N'MS_Description', N'Status de la orden de compra (AC=Activa, CA= Cancelada, PA= Surtida parcialmente, SU= Surtida)', N'user', N'dbo', N'table', N'tOrdenes_Compra', N'column', N'StatusOrden'


GO


exec sp_addextendedproperty N'MS_Description', N'Cantidad de producto', N'user', N'dbo', N'table', N'tDet_Entradas', N'column', N'CantidadE'
GO
exec sp_addextendedproperty N'MS_Description', N'Número de entrada', N'user', N'dbo', N'table', N'tDet_Entradas', N'column', N'IdEntrada'
GO
exec sp_addextendedproperty N'MS_Description', N'Clave orden de compra', N'user', N'dbo', N'table', N'tDet_Entradas', N'column', N'IdOrden'
GO
exec sp_addextendedproperty N'MS_Description', N'Clave del producto', N'user', N'dbo', N'table', N'tDet_Entradas', N'column', N'IdProd'
GO
exec sp_addextendedproperty N'MS_Description', N'Número de partida', N'user', N'dbo', N'table', N'tDet_Entradas', N'column', N'NumPartEntrada'


GO


exec sp_addextendedproperty N'MS_Description', N'Cantidad con problemas en la partida', N'user', N'dbo', N'table', N'tDet_Incidentes', N'column', N'CantIncid'
GO
exec sp_addextendedproperty N'MS_Description', N'Costos incurridos en el incidente en MXP', N'user', N'dbo', N'table', N'tDet_Incidentes', N'column', N'CostoIncid'
GO
exec sp_addextendedproperty N'MS_Description', N'Fecha de creación de la partida', N'user', N'dbo', N'table', N'tDet_Incidentes', N'column', N'FecAltPart'
GO
exec sp_addextendedproperty N'MS_Description', N'Número de entrada', N'user', N'dbo', N'table', N'tDet_Incidentes', N'column', N'IdEntrada'
GO
exec sp_addextendedproperty N'MS_Description', N'Número de incidente', N'user', N'dbo', N'table', N'tDet_Incidentes', N'column', N'IdIncid'
GO
exec sp_addextendedproperty N'MS_Description', N'Número de orden de compra', N'user', N'dbo', N'table', N'tDet_Incidentes', N'column', N'IdOrden'
GO
exec sp_addextendedproperty N'MS_Description', N'Clave del Producto', N'user', N'dbo', N'table', N'tDet_Incidentes', N'column', N'IdProd'
GO
exec sp_addextendedproperty N'MS_Description', N'Número de partida del incidente', N'user', N'dbo', N'table', N'tDet_Incidentes', N'column', N'NumPartIncid'


GO


exec sp_addextendedproperty N'MS_Description', N'Cantidad del producto ordenado', N'user', N'dbo', N'table', N'tDet_Ordenes_Compra', N'column', N'CantidadO'
GO
exec sp_addextendedproperty N'MS_Description', N'Descuento aplicable a la partida', N'user', N'dbo', N'table', N'tDet_Ordenes_Compra', N'column', N'Descuento'
GO
exec sp_addextendedproperty N'MS_Description', N'Clave de la órden de compra', N'user', N'dbo', N'table', N'tDet_Ordenes_Compra', N'column', N'IdOrden'
GO
exec sp_addextendedproperty N'MS_Description', N'Clave del producto', N'user', N'dbo', N'table', N'tDet_Ordenes_Compra', N'column', N'IdProd'
GO
exec sp_addextendedproperty N'MS_Description', N'Impuesto', N'user', N'dbo', N'table', N'tDet_Ordenes_Compra', N'column', N'Impuesto'
GO
exec sp_addextendedproperty N'MS_Description', N'Número de partida de la órden de compra', N'user', N'dbo', N'table', N'tDet_Ordenes_Compra', N'column', N'NumPartOrden'
GO
exec sp_addextendedproperty N'MS_Description', N'Precio del producto ordenado', N'user', N'dbo', N'table', N'tDet_Ordenes_Compra', N'column', N'Precio'


GO

