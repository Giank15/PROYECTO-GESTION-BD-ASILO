
/*==============================================================*/
/* Table: CERTIFICADOS                                          */
/*==============================================================*/

insert into CERTIFICADOS values(1,2,1,'2022/04/10','El paciente se encuentra hospedado en el asilo...');
insert into CERTIFICADOS values(2,5,1,'2022/05/15','El paciente se encuentra hospedado en el asilo...');

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/

insert into CLIENTE values(1,1,'1340987619','Sofia Miriam','Gómez González','Femenino','O+');
insert into CLIENTE values(2,2,'1281797145','Cristopher Camilo','Rodríguez Pérez','Masculino','A-');
insert into CLIENTE values(3,3,'1237914562','Cesar Francisco','Sanchez Parker','Masculino','AB-');
insert into CLIENTE values(4,4,'1353697280','Cristina Dora','Garcia Cruz','Femenino','B+');
insert into CLIENTE values(5,5,'1324791367','Gabriela Vanessa','Escobar Quijije','Femenino','O-');
insert into CLIENTE values(6,6,'1282946713','Alfredo Leonardo','Villa Sanchez','Masculino','O+');

/*==============================================================*/
/* Table: FACTURA                                               */
/*==============================================================*/

insert into FACTURA values(1,1,2,2,'2019/04/05',FALSE,0);
insert into FACTURA values(2,1,2,2,'2020/06/05',FALSE,0);
insert into FACTURA values(3,3,2,2,'2021/10/05',FALSE,0);
insert into FACTURA values(4,2,5,5,'2019/04/05',FALSE,0);
insert into FACTURA values(5,1,5,5,'2021/02/05',FALSE,0);
insert into FACTURA values(6,4,6,6,'2020/11/05',FALSE,0);
insert into FACTURA values(7,2,3,3,'2019/08/05',FALSE,0);

/*==============================================================*/
/* Table: FAMILIAR                                              */
/*==============================================================*/

insert into FAMILIAR values(1,'1345018609','Juan Carlos','Alcívar Gómez','Calle 15, avenida 6','0996325810');
insert into FAMILIAR values(2,'1325116100','Lucia Jennifer','Rodríguez Ramirez','Calle 8, avenida 11','05231951');
insert into FAMILIAR values(3,'1393202714','Margarita Jamileth','Sanchez Lucas','Calle 12 frente a la fabrica','0910734178');
insert into FAMILIAR values(4,'1377104592','Maria Rosa','Alvarado Garcia','Calle 2 a lado de la escuela','0998712358');
insert into FAMILIAR values(5,'1381426713','Julio Steven','Holguin Escobar','Calle 21, avenida Libertad','0917284590');
insert into FAMILIAR values(6,'1315891274','Jean Christian','Villa Garcia','Calle 9 diagonal al taller','05245173');

/*==============================================================*/
/* Table: FORMAPAGO                                             */
/*==============================================================*/

insert into FORMAPAGO values(1,'Deposito');
insert into FORMAPAGO values(2,'Debito');
insert into FORMAPAGO values(3,'Tarjeta de Credito');
insert into FORMAPAGO values(4,'Paypal');

/*==============================================================*/
/* Table: INGRESO                                               */
/*==============================================================*/

insert into INGRESO values(1,1,1);
insert into INGRESO values(2,2,2);
insert into INGRESO values(3,3,3);
insert into INGRESO values(4,4,4);
insert into INGRESO values(5,5,5);
insert into INGRESO values(6,6,6);

/*==============================================================*/
/* Table: PERSONAL                                              */
/*==============================================================*/

insert into PERSONAL values(1,1,'1358552672','Alfredo Fernando','Santana Alcivar','Masculino','1300.00','2018/10/10');
insert into PERSONAL values(2,1,'1325150104','Carmen Guadalupe','Franco Molina','Femenino','1200.00','2020/04/15');
insert into PERSONAL values(3,2,'1243871261','Julieta Carolina','Ramirez Ortiz','Femenino','950.00','2019/05/21');
insert into PERSONAL values(4,2,'1320047948','Paul Mario','Ramirez Ortiz','Masculino','900.00','2020/02/10');
insert into PERSONAL values(5,3,'1385215973','Andy Joel','Arteaga Zambrano','Masculino','800.00','2018/11/09');
insert into PERSONAL values(6,4,'1332558710','Mauricio Jose','Vinces Anderson','Masculino','1050.00','2018/07/29');
insert into PERSONAL values(7,4,'1314753759','Rosa Jamileth','Zambrano Soledispa','Femenino','1050.00','2018/08/12');

/*==============================================================*/
/* Table: PLANCONTRATADO                                        */
/*==============================================================*/

insert into PLANCONTRATADO values(1,2,'Plan avanzado completo que contiene 8 servicios');
insert into PLANCONTRATADO values(2,2,'Plan avanzado completo que contiene 8 servicios mas 1 servicio adicional');
insert into PLANCONTRATADO values(3,1,'Plan basico completo que contiene 6 servicios');
insert into PLANCONTRATADO values(4,3,'Plan premium completo que contiene 12 servicios');
insert into PLANCONTRATADO values(5,2,'Plan avanzado completo que contiene 8 servicios');
insert into PLANCONTRATADO values(6,1,'Plan basico completo que contiene 6 servicios');

/*==============================================================*/
/* Table: REGISTRO                                              */
/*==============================================================*/

insert into REGISTRO values(1,'2019/06/11','Problemas respiratorios','Juan Alcívar Gómez','Ninguno','No posee cuerpo de boveda');
insert into REGISTRO values(2,'2019/06/25','Buen estado de salud','Lucia Rodríguez Ramirez','Beatriz Ramirez(Esposa)','No posee cuerpo de boveda');
insert into REGISTRO values(3,'2019/08/20','Buen estado de salud','Margarita Sanchez Lucas','Victor Sanchez(hijo)','Posee cuerpo de boveda');
insert into REGISTRO values(4,'2019/07/05','Problemas en los riñones','Maria Alvarado Garcia','Ramiro Alvarado(Esposo)','No posee cuerpo de boveda');
insert into REGISTRO values(5,'2019/07/17','Buen estado de salud','Julio Holguin Escobar','Ninguno','Posee cuerpo de boveda');
insert into REGISTRO values(6,'2019/09/05','Problemas en los gastrointestinales','Jean Villa Garcia','Ninguno','No posee cuerpo de boveda');

/*==============================================================*/
/* Table: SERVICIO                                              */
/*==============================================================*/

insert into SERVICIO values(1,1,1,5,'Bingo semanal');
insert into SERVICIO values(2,1,1,5,'Paseo fuera del asilo');
insert into SERVICIO values(3,1,2,1,'General');
insert into SERVICIO values(4,1,3,6,'Tratamiento muscular');
insert into SERVICIO values(5,1,3,7,'Tratamiento fisico');
insert into SERVICIO values(6,2,1,5,'Bingo semanal');
insert into SERVICIO values(7,2,1,5,'Paseo fuera del asilo');
insert into SERVICIO values(8,2,2,1,'General');
insert into SERVICIO values(9,2,2,2,'Neurologica');
insert into SERVICIO values(10,2,3,6,'Tratamiento muscular');
insert into SERVICIO values(11,2,3,7,'Tratamiento fisico');
insert into SERVICIO values(12,3,1,5,'Bingo semanal');
insert into SERVICIO values(13,3,2,1,'General');
insert into SERVICIO values(14,3,3,6,'Tratamiento muscular');
insert into SERVICIO values(15,3,3,7,'Tratamiento de interacción social');
insert into SERVICIO values(16,4,1,5,'Bingo semanal');
insert into SERVICIO values(17,4,1,5,'Paseo fuera del asilo');
insert into SERVICIO values(18,4,2,1,'General');
insert into SERVICIO values(19,4,2,1,'Cardiovascular');
insert into SERVICIO values(20,4,3,7,'Tratamiento de interacción social');
insert into SERVICIO values(21,4,3,7,'Tratamiento fisico');
insert into SERVICIO values(22,5,1,5,'Bingo semanal');
insert into SERVICIO values(23,5,1,5,'Paseo fuera del asilo');
insert into SERVICIO values(24,5,2,1,'General');
insert into SERVICIO values(25,5,3,7,'Tratamiento fisico');
insert into SERVICIO values(26,5,3,7,'Tratamiento de interacción social');
insert into SERVICIO values(27,6,1,5,'Bingo semanal');
insert into SERVICIO values(28,6,2,1,'General');
insert into SERVICIO values(29,6,3,7,'Tratamiento fisico');
insert into SERVICIO values(30,6,3,6,'Tratamiento muscular');

/*==============================================================*/
/* Table: TIPOCERTIFICADO                                       */
/*==============================================================*/

insert into TIPOCERTIFICADO values(1,'Residencia en asilo');
insert into TIPOCERTIFICADO values(2,'Defunción');

/*==============================================================*/
/* Table: TIPOPERSONAL                                          */
/*==============================================================*/

insert into TIPOPERSONAL values(1,'Doctor');
insert into TIPOPERSONAL values(2,'Enfermera/o');
insert into TIPOPERSONAL values(3,'Servicio');
insert into TIPOPERSONAL values(4,'Tratamiento');

/*==============================================================*/
/* Table: TIPOPLAN                                              */
/*==============================================================*/

insert into TIPOPLAN values(1,'Basico');
insert into TIPOPLAN values(2,'Avanzado');
insert into TIPOPLAN values(3,'Premium');

/*==============================================================*/
/* Table: TIPOSERVICIO                                          */
/*==============================================================*/

insert into TIPOSERVICIO values(1,'Entretenimiento','3 horas','25.00');
insert into TIPOSERVICIO values(2,'Revisión medica','2 horas','40.00');
insert into TIPOSERVICIO values(3,'Tratamiento','3 horas','35.00');
