namespace MyCustom
{
    public partial class Customer
    {
        public string FullName => $"{FirstName} {LastName}";
    }
}