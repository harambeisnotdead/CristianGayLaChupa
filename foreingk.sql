
alter table EXCURSION add constraint fk_EXCURSION_idEvento foreign key (idEvento) references EVENTO(idEvento);

alter table CONFERENCIA add constraint fk_CONFERENCIA_idEvento foreign key (idEvento) references EVENTO(idEvento),
            add constraint fk_CONFERENCIA_idAula foreign key (idAula) references AULA(idAula),
            add constraint fk_CONFERENCIA_idPlanta foreign key (idPlanta) references AULA(idPlanta);


alter table LIMPIA add constraint fk_LIMPIA_idAula foreign key (idAula) references AULA(idAula),
            add constraint fk_LIMPIA_idPlanta foreign key (idPlanta) references AULA(idPlanta),
            add constraint fk_LIMPIA_PersoLimpieza foreign key (DNIPersonalLimpieza) references PERSONAL_LIMPIEZA(DNIPersonalLimpieza);


alter table PLANTA add constraint fk_PLANTA_idPlanta foreign key (idPlanta) references AULA(idPlanta);

alter table TIENE add constraint fk_TIENE_idAsignatura foreign key (idAsignatura) references ASIGNATURA(idAsignatura),
            add constraint fk_TIENE_idAula foreign key (idAula) references AULA(idAula),
            add constraint fk_TIENE_idPlanta foreign key (idPlanta) references AULA(idPlanta),
            add constraint fk_TIENE_idGrupo foreign key (idGrupo) references GRUPO(idGrupo),
            add constraint fk_TIENE_idCurso foreign key (idCurso) references GRUPO(idCurso);

alter table GRUPO add constraint fk_GRUPO_idCurso foreign key (idCurso) references CURSO(idCurso);
