


/**********************  Paises **********************************/                                                             

--Insertar Pais

create procedure sp_pais_inserta
@IdPais char(2),
@NomPais varchar(40)

as
insert into tPaises values 
(
@IdPais,
@NomPais
)
go


exec sp_pais_inserta 'AL','Albania' 
select * from tPaises

-- Update Paises 

create procedure sp_pais_update
@IdPais char(2),
@NomPais varchar(40)

as
UPDATE tPaises
set NomPais= @NomPais
where IdPais= @IdPais
go

-- Delete Paises

create procedure sp_pais_delete
@IdPais char(2)
as
delete from tPaises 
where IdPais=@IdPais
go



-----------------SELECTS -----------------------



create procedure sp_pais_dameId
@NomPais varchar(40)
as
SELECT 
IdPais
from tPaises 
where NomPais like '%'+@NomPais+'%' 
go



alter procedure sp_pais_selectBusqAv
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
go



alter procedure sp_pais_select
as
(
select 
IdPais,
NomPais
from tPaises 
)
order by NomPais
go







exec sp_pais_inserta'MX','México'
exec sp_pais_inserta'AF','Afganistán'
exec sp_pais_inserta'AL	 ','Albania'
exec sp_pais_inserta'DE	 ','Alemania'
exec sp_pais_inserta'AD	 ','Andorra'
exec sp_pais_inserta'AO	 ','Angola'
exec sp_pais_inserta'MK	 ','Antigua Rep. Yugoslava de Macedonia'
exec sp_pais_inserta'AG	 ','Antigua y Barbuda'
exec sp_pais_inserta'SA	 ','Arabia Saudita'
exec sp_pais_inserta'DZ	 ','Argelia'
exec sp_pais_inserta'AR	 ','Argentina'
exec sp_pais_inserta'AM	 ','Armenia'
exec sp_pais_inserta'AU	 ','Australia'
exec sp_pais_inserta'AT	 ','Austria'
exec sp_pais_inserta'AZ	 ','Azerbaiyán'
exec sp_pais_inserta'BS	 ','Bahamas'
exec sp_pais_inserta'BH	 ','Bahrein'
exec sp_pais_inserta'BD	 ','Bangladesh'
exec sp_pais_inserta'BB	 ','Barbados'
exec sp_pais_inserta'BY	 ','Belarús'
exec sp_pais_inserta'BE	 ','Bélgica'
exec sp_pais_inserta'BZ	 ','Belice'
exec sp_pais_inserta'BJ	 ','Benin'
exec sp_pais_inserta'BT	 ','Bhután'
exec sp_pais_inserta'BO	 ','Bolivia'
exec sp_pais_inserta'BA	 ','Bosnia y Herzegovina'
exec sp_pais_inserta'BW	 ','Botswana'
exec sp_pais_inserta'BR	 ','Brasil'
exec sp_pais_inserta'BN	 ','Brunei Darussalam'
exec sp_pais_inserta'BG	 ','Bulgaria'
exec sp_pais_inserta'BF	 ','Burkina Faso'
exec sp_pais_inserta'BI	 ','Burundi'
exec sp_pais_inserta'CV	 ','Cabo Verde'
exec sp_pais_inserta'KH	 ','Camboya'
exec sp_pais_inserta'CM	 ','Camerún'
exec sp_pais_inserta'CA	 ','Canadá'
exec sp_pais_inserta'CO	 ','Colombia'
exec sp_pais_inserta'KM	 ','Comoras'
exec sp_pais_inserta'CG	 ','Congo,República del'
exec sp_pais_inserta'CD	 ','Congo,República Democrática'
exec sp_pais_inserta'KR	 ','Corea del Norte'
exec sp_pais_inserta'KP	 ','Corea del Sur'
exec sp_pais_inserta'CI	 ','Costa de Marfil'
exec sp_pais_inserta'CR	 ','Costa Rica'
exec sp_pais_inserta'HR	 ','Croacia'
exec sp_pais_inserta'CU	 ','Cuba'
exec sp_pais_inserta'TD	 ','Chad'
exec sp_pais_inserta'CL	 ','Chile'
exec sp_pais_inserta'CN	 ','China'
exec sp_pais_inserta'CY	 ','Chipre'
exec sp_pais_inserta'DK	 ','Dinamarca'
exec sp_pais_inserta'DJ	 ','Djibouti'
exec sp_pais_inserta'DM	 ','Dominicana,República'
exec sp_pais_inserta'EC	 ','Ecuador'
exec sp_pais_inserta'EG	 ','Egipto'
exec sp_pais_inserta'SV	 ','El Salvador'
exec sp_pais_inserta'AE	 ','Emiratos Árabes Unidos'
exec sp_pais_inserta'ER	 ','Eritrea'
exec sp_pais_inserta'SK	 ','Eslovaquia'
exec sp_pais_inserta'SI	 ','Eslovenia'
exec sp_pais_inserta'ES	 ','España'
exec sp_pais_inserta'US	 ','Estados Unidos de América'
exec sp_pais_inserta'EE	 ','Estonia'
exec sp_pais_inserta'ET	 ','Etiopía'
exec sp_pais_inserta'FJ	 ','Fiji'
exec sp_pais_inserta'PH	 ','Filipinas'
exec sp_pais_inserta'FI	 ','Finlandia'
exec sp_pais_inserta'FR	 ','Francia'
exec sp_pais_inserta'GA	 ','Gabón'
exec sp_pais_inserta'GM	 ','Gambia'
exec sp_pais_inserta'GE	 ','Georgia'
exec sp_pais_inserta'GH	 ','Ghana'
exec sp_pais_inserta'GD	 ','Granada'
exec sp_pais_inserta'GR	 ','Grecia'
exec sp_pais_inserta'GT	 ','Guatemala'
exec sp_pais_inserta'GN	 ','Guinea'
exec sp_pais_inserta'GW	 ','Guinea-Bissau'
exec sp_pais_inserta'GQ	 ','Guinea Ecuatorial'
exec sp_pais_inserta'GY	 ','Guyana'
exec sp_pais_inserta'HT	 ','Haití'
exec sp_pais_inserta'HN	 ','Honduras'
exec sp_pais_inserta'HU	 ','Hungría'
exec sp_pais_inserta'IN	 ','India'
exec sp_pais_inserta'ID	 ','Indonesia'
exec sp_pais_inserta'IR	 ','Irán'
exec sp_pais_inserta'IQ	 ','Iraq'
exec sp_pais_inserta'IE	 ','Irlanda'
exec sp_pais_inserta'IS	 ','Islandia'
exec sp_pais_inserta'MH	 ','Islas Marshall'
exec sp_pais_inserta'SB	 ','Islas Salomón'
exec sp_pais_inserta'IL	 ','Israel'
exec sp_pais_inserta'IT	 ','Italia'
exec sp_pais_inserta'JM	 ','Jamaica'
exec sp_pais_inserta'JP	 ','Japón'
exec sp_pais_inserta'JO	 ','Jordania'
exec sp_pais_inserta'KZ	 ','Kazajstán'
exec sp_pais_inserta'KE	 ','Kenya'
exec sp_pais_inserta'KG	 ','Kirguistán'
exec sp_pais_inserta'KI	 ','Kiribati'
exec sp_pais_inserta'KW	 ','Kuwait'
exec sp_pais_inserta'LA	 ','Lao'
exec sp_pais_inserta'LS	 ','Lesotho'
exec sp_pais_inserta'LB	 ','Libano'
exec sp_pais_inserta'LR	 ','Liberia'
exec sp_pais_inserta'LY	 ','Libia'
exec sp_pais_inserta'LI	 ','Liechtenstein'
exec sp_pais_inserta'LT	 ','Lituania'
exec sp_pais_inserta'LU	 ','Luxemburgo'
exec sp_pais_inserta'MG	 ','Madagascar'
exec sp_pais_inserta'MY	 ','Malasia'
exec sp_pais_inserta'MW	 ','Malawi'
exec sp_pais_inserta'MV	 ','Maldivas'
exec sp_pais_inserta'ML	 ','Malí'
exec sp_pais_inserta'MT	 ','Malta'
exec sp_pais_inserta'MA	 ','Marruecos'
exec sp_pais_inserta'MU	 ','Mauricio'
exec sp_pais_inserta'MR	 ','Mauritania'
exec sp_pais_inserta'FM	 ','Micronesia'
exec sp_pais_inserta'MD	 ','Moldova'
exec sp_pais_inserta'MC	 ','Mónaco'
exec sp_pais_inserta'MN	 ','Mongolia'
exec sp_pais_inserta'MZ	 ','Mozambique'
exec sp_pais_inserta'MM	 ','Myanmar'
exec sp_pais_inserta'NA	 ','Namibia'
exec sp_pais_inserta'NR	 ','Nauru'
exec sp_pais_inserta'NP	 ','Nepal'
exec sp_pais_inserta'NI	 ','Nicaragua'
exec sp_pais_inserta'NE	 ','Níger'
exec sp_pais_inserta'NG	 ','Nigeria'
exec sp_pais_inserta'NO	 ','Noruega'
exec sp_pais_inserta'NZ	 ','Nueva Zelandia'
exec sp_pais_inserta'OM	 ','Omán'
exec sp_pais_inserta'NL	 ','Holanda - Países Bajos'
exec sp_pais_inserta'PK	 ','Pakistán'
exec sp_pais_inserta'PW	 ','Palau'
exec sp_pais_inserta'PA	 ','Panamá'
exec sp_pais_inserta'PG	 ','Papúa Nueva Guinea'
exec sp_pais_inserta'PY	 ','Paraguay'
exec sp_pais_inserta'PE	 ','Perú'
exec sp_pais_inserta'PL	 ','Polonia'
exec sp_pais_inserta'PT	 ','Portugal'
exec sp_pais_inserta'QA	 ','Qatar'
exec sp_pais_inserta'EN	 ','Inglaterra - Reino Unido'
exec sp_pais_inserta'CF	 ','República Centroafricana'
exec sp_pais_inserta'CZ	 ','República Checa'
exec sp_pais_inserta'DO	 ','República Dominicana'
exec sp_pais_inserta'RO	 ','Rumania'
exec sp_pais_inserta'RU	 ','Rusia'
exec sp_pais_inserta'RW	 ','Rwanda'
exec sp_pais_inserta'AS	 ','Samoa Americana'
exec sp_pais_inserta'KN	 ','San Kitts y Nevis'
exec sp_pais_inserta'SM	 ','San Marino'
exec sp_pais_inserta'VC	 ','San Vicente y Las Granadinas'
exec sp_pais_inserta'LC	 ','Santa Lucía'
exec sp_pais_inserta'ST	 ','Santo Tomé y Príncipe'
exec sp_pais_inserta'SN	 ','Senegal'
exec sp_pais_inserta'RS	 ','Serbia'
exec sp_pais_inserta'SC	 ','Seychelles'
exec sp_pais_inserta'SL	 ','Sierra Leona'
exec sp_pais_inserta'SG	 ','Singapur'
exec sp_pais_inserta'SY	 ','Siria'
exec sp_pais_inserta'SO	 ','Somalia'
exec sp_pais_inserta'LK	 ','Sri Lanka'
exec sp_pais_inserta'ZA	 ','Sudáfrica'
exec sp_pais_inserta'SD	 ','Sudán'
exec sp_pais_inserta'SE	 ','Suecia'
exec sp_pais_inserta'CH	 ','Suiza'
exec sp_pais_inserta'SR	 ','Suriname'
exec sp_pais_inserta'SZ	 ','Swazilandia'
exec sp_pais_inserta'TH	 ','Tailandia'
exec sp_pais_inserta'TZ	 ','Tanzania'
exec sp_pais_inserta'TJ	 ','Tayikistán'
exec sp_pais_inserta'TL	 ','Timor'
exec sp_pais_inserta'TG	 ','Togo'
exec sp_pais_inserta'TO	 ','Tonga'
exec sp_pais_inserta'TT	 ','Trinidad y Tobago'
exec sp_pais_inserta'TN	 ','Túnez'
exec sp_pais_inserta'TM	 ','Turkmenistán'
exec sp_pais_inserta'TR	 ','Turquía'
exec sp_pais_inserta'TV	 ','Tuvalu'
exec sp_pais_inserta'UA	 ','Ucrania'
exec sp_pais_inserta'UG	 ','Uganda'
exec sp_pais_inserta'UY	 ','Uruguay'
exec sp_pais_inserta'UZ	 ','Uzbekistán'
exec sp_pais_inserta'VU	 ','Vanuatu'
exec sp_pais_inserta'VE	 ','Venezuela'
exec sp_pais_inserta'VN	 ','Viet Nam'
exec sp_pais_inserta'YE	 ','Yemen'
exec sp_pais_inserta'ZM	 ','Zambia'
exec sp_pais_inserta'ZW	 ','Zimbabwe'
exec sp_pais_inserta'HK	 ','Hong Kong'
exec sp_pais_inserta'AI	 ','Anguilla'
exec sp_pais_inserta'TP	 ','Timor del Este'
exec sp_pais_inserta'VA	 ','Vaticano - Santa Sede'
exec sp_pais_inserta'AQ	 ','Antartica'
exec sp_pais_inserta'AW	 ','Aruba'
exec sp_pais_inserta'AC	 ','Islas Asención'
exec sp_pais_inserta'AX	 ','Islas Aland'
exec sp_pais_inserta'TK	 ','Tokelau'
exec sp_pais_inserta'TW	 ','Taiwan'
exec sp_pais_inserta'VG	 ','Islas Vírgenes Británicas'
exec sp_pais_inserta'VI	 ','Islas Vírgenes Americanas'
exec sp_pais_inserta'WF	 ','Wallis y Fortuna'
exec sp_pais_inserta'WS	 ','Samoa'
exec sp_pais_inserta'YT	 ','Mayotte'
exec sp_pais_inserta'MO	 ','Macao'
exec sp_pais_inserta'MP	 ','Islas Mariana'
exec sp_pais_inserta'MQ	 ','Martinica'
exec sp_pais_inserta'MS	 ','Monserrat'
exec sp_pais_inserta'NC	 ','Nueva Caledonia'
exec sp_pais_inserta'NF	 ','Islas Norfolk'
exec sp_pais_inserta'NU	 ','Niue'
exec sp_pais_inserta'BM	 ','Bermuda'
exec sp_pais_inserta'BV	 ','Isla Bouvet'
exec sp_pais_inserta'CC	 ','Islas Cocos (Keeling)'
exec sp_pais_inserta'CK	 ','Islas Cook'
exec sp_pais_inserta'CX	 ','Islas Navidad'
exec sp_pais_inserta'EH	 ','Sahara Oriental'
exec sp_pais_inserta'FK	 ','Islas Malvinas - Falkland'
exec sp_pais_inserta'FO	 ','Faroe'
exec sp_pais_inserta'GF	 ','Guyana Francesa'
exec sp_pais_inserta'GG	 ','Guernsey'
exec sp_pais_inserta'GI	 ','Gibraltar'
exec sp_pais_inserta'GL	 ','Greenland'
exec sp_pais_inserta'GP	 ','Guadalupe'
exec sp_pais_inserta'GS	 ','South Georgia e Islas Sandwich del Sur'
exec sp_pais_inserta'GU	 ','Guam'
exec sp_pais_inserta'HM	 ','Heard and McDonald Islands'
exec sp_pais_inserta'IM	 ','Isle of Man'
exec sp_pais_inserta'JE	 ','Jersey'
exec sp_pais_inserta'KY	 ','Islas Cayman'
exec sp_pais_inserta'LV	 ','Latvia - Letonia'
exec sp_pais_inserta'ME	 ','Montenegro'
exec sp_pais_inserta'TF	 ','Territorios Franceses del Sur'
exec sp_pais_inserta'PF	 ','Polinesia Francesa'
exec sp_pais_inserta'IO	 ','British Indian Ocean Territories'











/**********************  Estados **********************************/                                                             



--Insertar Estado

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
order by NomEstado
go



-- Update Estado 

alter procedure sp_estado_update
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
go



-- Delete Estado

create procedure sp_estado_delete
@IdEstado varchar(6)
as
delete from tEstados
where IdEstado=@IdEstado
go


------------SELECTS



create procedure sp_estado_dameId
@NomEstado varchar(40)
as
SELECT 
IdEstado
from tEstados 
where NomEstado like '%'+@NomEstado+'%' 
go



/*  Todos los estados sin importar el pais

alter procedure sp_estado_select
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
)
go

*/





alter procedure sp_estado_select
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
go





alter procedure sp_estado_selectBusqAv
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
go
 










/**********************  Ciudades **********************************/                                                             

select * from tCiudades

--Insertar Ciudad

alter procedure sp_ciudad_inserta
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
go




-- Update Ciudad 

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
go




-- Delete Ciudad

create procedure sp_ciudad_delete
@IdCiudad varchar(6)
as
delete from tCiudades
where IdCiudad= @IdCiudad
go





--Selects




create procedure sp_ciudad_dameId
@NomCiudad varchar(40)
as
SELECT 
IdCiudad
from tCiudades 
where NomCiudad like '%'+@NomCiudad+'%' 
go



alter procedure sp_ciudad_select
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
go






create procedure sp_ciudad_selectPais
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

where ciudad.IdPais like @IdPais

)
order by ciudad.NomCiudad
go










alter procedure sp_ciudad_selectBusqAv
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
go



/**********************  Monedas **********************************/                                                             




--Insertar Moneda

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
go




-- Update Monedas

alter procedure sp_moneda_update
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
go





-- Delete Moneda

create procedure sp_moneda_delete
@IdMoneda char(3)
as
delete from tMonedas
where IdMoneda= @IdMoneda
go





--- SELECTS


alter procedure sp_moneda_dameId
@NomMoneda varchar(40)
as
SELECT 
IdMoneda
from tMonedas
where NomMoneda like '%'+@NomMoneda+'%' 
go


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
go




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
go


/**********************  Medidas **********************************/  



create procedure sp_medida_inserta
@IdMedida char(3),
@NomMedida varchar(40)
as
insert into tMedidas values 
(
@IdMedida,
@NomMedida
)
go





create procedure sp_medida_update
@IdMedida char(3),
@NomMedida varchar(40)
as
UPDATE tMedidas
set NomMedida= @NomMedida
where IdMedida= @IdMedida
go



create procedure sp_medida_delete
@IdMedida char(3)
as
delete from tMedidas
where IdMedida= @IdMedida
go



create procedure sp_medida_dameId
@NomMedida varchar(40)
as
SELECT 
IdMedida
from tMedidas 
where NomMedida like '%'+@NomMedida+'%' 
go





create procedure sp_medida_select
as
(
select 
IdMedida,
NomMedida
from tMedidas 
)
go



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
go
  


/**********************  Almacenes **********************************/                                                             

select * from tAlmacenes

-- Todas las variables para los campos: 
/*
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
*/


--Insertar Almacen

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
go



--UPDATE

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
go


-- DELETE

create procedure sp_almacen_delete
@IdAlm varchar(10)
as
delete from tAlmacenes
where IdAlm= @IdAlm
go


-- SELECTS


create procedure sp_almacen_dameId
@NomAlm varchar(40)
as
SELECT 
IdAlm
from tAlmacenes 
where NomAlm like '%'+@NomAlm+'%' 
go





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
go



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
go






/**************************PROVEEDORES****************************************/


- Insert

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
go


-- Update




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
go


-- Delete


create procedure sp_proveedor_delete
@IdProv varchar(6)
as
delete from tProveedores
where IdProv= @IdProv
go


-- SELECTS


create procedure sp_proveedor_dameId
@NomProv varchar(50)
as
SELECT 
IdProv
from tProveedores 
where NomProv like '%'+@NomProv+'%' 
order by IdProv
go



create procedure sp_proveedor_select
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
go



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
go




/*********************************CATEGORIAS PRODUCTOS ********************************/



-- INSERTA:

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
go



-- UPDATE




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

go

---- DELETE


create procedure sp_cat_prod_delete
@IdCatProd char(4)
as
delete from tCat_Productos
where IdCatProd= @IdCatProd
go



--- SELECTS


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
go



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
go





/***************************** PRODUCTOS *******************************************/


-- INSERT


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
go

-- UPDATE

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

go


-- DELETES

create procedure sp_producto_delete
@IdProd varchar(10)
as
delete from tProductos
where IdProd= @IdProd
go




-- SELECTS

create procedure sp_producto_dameId
@NomProd varchar(50)
as
SELECT 
IdProd
from tProductos 
where NomProd like '%'+@NomProd+'%' 
order by IdProd
go


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
go


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
go




/************ EVALUACION DEL DESEMPEÑO


-- INSERT 

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
go


-- DELETE

create procedure sp_evaluacion_delete
@IdEval int
as
delete from tEval_Desempeno
where IdEval=@IdEval
go




-- INSERT PARTIDA



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
go


-- DELETE PARTIDA

create procedure sp_evaluacion_det_delete
@IdEval int,
@NumPregEval int
as
delete from tDet_Eval_Desempeno
where 
IdEval like @IdEval
and
NumPregEval like @NumPregEval
go





/********* ORDENES DE COMPRA *********************/


-- INSERTS


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
go




-- DELETES

create procedure sp_ordenes_delete
@IdOrden int
as
delete from tOrdenes_Compra
where 
IdOrden like @IdOrden
go


-- UPDATES


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

go 


-- SELECTS 



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
go


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
go




-- INSERTS PARTIDAS

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
go


-- UPDATES PARTIDAS


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

go


-- DELETES PARTIDAS


create procedure sp_ordenes_det_delete
@IdOrden int,
@NumPartOrden int
as
delete from tDet_Ordenes_Compra
where 
IdOrden like @IdOrden
and
NumPartOrden like @NumPartOrden
go


-- SELECTS PARTIDAS  


(incompleto)

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
go








/**************** ENTRADAS ******************************/


-- INSERT

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
go


-- UPDATE


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
go


-- DELETE

create procedure sp_entradas_delete
@IdEntrada int
as
delete from tEntradas
where 
IdEntrada like @IdEntrada
go


-- INSERT PARTIDA


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
go


-- UPDATE PARTIDA


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

go


-- DELETE PARTIDA



create procedure sp_entradas_det_delete
@IdEntrada int,
@NumPartEntrada int
as
delete from tDet_Entradas
where 
IdEntrada like @IdEntrada
and
NumPartEntrada like @NumPartEntrada
go




/********************** INCIDENTES ****************************/




-- INSERT

alter procedure sp_incidente_inserta
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
go


-- DELETE

create procedure sp_incidente_delete
@IdIncid varchar(6)
as
delete from tIncidentes
where 
IdIncid like @IdIncid
go

-- UPDATE

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

go


-- INSERT PARTIDA

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
go

-- DELETE PARTIDA

create procedure sp_incidente_det_delete
@IdIncid int,
@NumPartIncid int
as
delete from tDet_Incidentes
where 
IdIncid like @IdIncid
and
NumPartIncid like @NumPartIncid
go


-- UPDATE PARTIDA

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

go













--PENDIENTES POR ARREGLAR

exec sp_pais_inserta 'Pud','Prueba' 
-- Poner constraint para que no se pueda ingresar mas de dos letras al hacer el insert. en este caso lo dio de alta como Pu

exec sp_estado_update 'MXMEX','Estado de México','MH' 
select * from tEstados
-- que no se pueda grabar un estado con un codigo (al principio de su ID) diferente al pais al que pertenece. Igual la ciudad

exec sp_ciudad_inserta 'MX001','Jalapa',' ','MX' 
select * from tCiudades
-- Para que pudiera quedar el estado en blanco, di de alta un estado en blanco (Id es un espacio)Hacer qe en los menus aparezca como "ninguno"