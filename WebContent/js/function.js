var x=confirm("Do you want to purchase the item");
if(x==1)
{
	window.location.href = 'orderinfo.jsp';
}
else
{
	window.location.href = 'ShowCart1.jsp';
}