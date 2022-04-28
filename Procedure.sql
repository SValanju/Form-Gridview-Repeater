use DcodeTech
go
create proc viewdataEdit
@ID int
as begin
select * from formDetail where ID=@ID
end;