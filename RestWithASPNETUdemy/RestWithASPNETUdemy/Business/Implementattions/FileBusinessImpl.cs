using System.IO;

namespace RestWithASPNETUdemy.Business.Implementattions
{
    public class FileBusinessImpl : IFileBusiness
    {
        public byte[] GetPDFFile()
        {
            string path = Directory.GetCurrentDirectory();
            var fullPath = path + "/Other/Node13h.pdf";
            return File.ReadAllBytes(fullPath);
        }
    }
}