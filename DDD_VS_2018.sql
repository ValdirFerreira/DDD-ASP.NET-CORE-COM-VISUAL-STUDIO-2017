create database DDDTeste
go
use DDDTeste

GO
create table Usuario(
 Id int primary key identity,
NomeUsuario varchar(255)
) 



go 

create procedure SalvarUsuario
(
@NomeUsuario varchar(255)
)
as
Begin 
Insert into Usuario values(@NomeUsuario)
end

go 

create procedure ListarTodos
as
Begin
select * from Usuario
end

GO

create procedure AtualizarUsuario
(
@NomeUsuario varchar(255),
@Id int
)
as
Begin 
update  Usuario set NomeUsuario = @NomeUsuario where Id = @Id
end

GO

create procedure ExcluirUsuario
(
@Id int
)
as
Begin 
delete from  Usuario  where Id = @Id
end

GO

create procedure ObterPorId
(
@Id int
)
as
Begin 
select * from  Usuario  where Id = @Id
end

