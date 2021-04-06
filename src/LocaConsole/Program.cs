using System;
using System.IO;
using System.Reflection;
using MongoDB.Driver;
//http://ec2-34-212-234-20.us-west-2.compute.amazonaws.com/
//https://projectstage.tk/
namespace LocaConsole
{
    class Program
    {
        private const string ConnectionStringDefoult = "https://projectstage.tk/";

        static void Main(string[] args)
        {
            StrtInfo();
            Console.WriteLine("Добавьте адрес подключения");
            string connectionString = Console.ReadLine();
            if (string.IsNullOrEmpty(connectionString))

            { connectionString = ConnectionStringDefoult;
            }
            string PassvordMongo = "dzvu8NUy82IZNRUz";
            //mongodb+srv://admin:<password>@cluster0.azgrt.gcp.mongodb.net/myFirstDatabase?retryWrites=true&w=majority
            //dzvu8NUy82IZNRUz
            string connectionStringongo = $"mongodb + srv://admin:{PassvordMongo}@cluster0.azgrt.gcp.mongodb.net/myFirstDatabase?retryWrites=true&w=majority"
            MongoTest mt = new MongoTest(connectionStringongo);

            Console.ReadKey();
        }

        private static void StrtInfo()
        {
            //string appVersion = Assembly.GetEntryAssembly().GetCustomAttribute()?.Version;
            //Console.WriteLine(appVersion);
            //Console.WriteLine(Environment.NewLine);


            const int peHeaderOffset = 60;
            const int linkerTimestampOffset = 8;
            byte[] bytes = new byte[2048];
            using (FileStream file = new FileStream(Assembly.GetEntryAssembly().Location, FileMode.Open, FileAccess.Read, FileShare.ReadWrite))
            {
                file.Read(bytes, 0, bytes.Length);
            }
            Int32 headerPos = BitConverter.ToInt32(bytes, peHeaderOffset);
            Int32 secondsSince1970 = BitConverter.ToInt32(bytes, headerPos + linkerTimestampOffset);
            DateTime dt = new DateTime(1970, 1, 1, 0, 0, 0, DateTimeKind.Utc);
            DateTime dateTimeUTC = dt.AddSeconds(secondsSince1970);
            DateTime localTime = TimeZoneInfo.ConvertTimeFromUtc(dateTimeUTC, TimeZoneInfo.Local);
            string applicationLastBuildTime = localTime.ToString("dd-MMM-yyyy hh:mm:sstt") + " " + TimeZoneInfo.Local.Id;
            Console.WriteLine(applicationLastBuildTime);
            Console.WriteLine(Environment.NewLine);
        }
    }

    internal class MongoTest
    {
        private string connectionStringongo;

        public MongoTest(string connectionStringongo)
        {
            this.connectionStringongo = connectionStringongo;;
            MongoClient client = new MongoClient(connectionStringongo);
            IMongoDatabase database = client.GetDatabase("test");

        }
    }
}
