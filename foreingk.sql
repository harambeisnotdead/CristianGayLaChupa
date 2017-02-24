alter table ALUMNO add constraint fk_es_ALUMNO_idGrupo foreign key (idGrupo) references GRUPO(idGrupo),
            add constraint fk_es_ALUMNO_idCurso foreign key (idCurso) references GRUPO(idCurso);

alter table ES_EVALUADO add constraint fk_es_evaluado_DNIAlumno foreign key (DNIAlumno) references ALUMNO(DNIAlumno),
            add constraint fk_es_evaluado_idUnidad foreign key (idUnidad) references idUnidad(UNIDAD);
            add constraint fk_es_evaluado_idAsignatura foreign key (idAsignatura) references idAsignatura(UNIDAD);
