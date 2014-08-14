using System;
using System.Collections.Generic;
using System.IO;
using System.Text;

namespace AsciiConverter
{
    class AsciiGen
    {
        
        string fileToRead = string.Empty;
        string fileToGen = "results.txt";

        static void Main(string[] args)
        {
            if (args.Length > 0)
            {
                new AsciiConverter.AsciiGen(args[0]);
            }
        }

        public AsciiGen(string fileName)
        {
            this.fileToRead = fileName;
            string line = string.Empty;
            string output = string.Empty;
            StreamReader reader = new StreamReader(fileToRead);
            StreamWriter writer = new StreamWriter(fileToGen);
            try
            {
                while (reader != null)
                {
                    line = reader.ReadLine();
                    output = GetAsciiCodes(line);
                    writer.WriteLine(output);
                }
            }
            catch { }
            finally
            {
                reader.Close();
                writer.Close();
            }
        }

        private string GetAsciiCodes(string line)
        {
          string result = string.Empty;  
          byte[] output = System.Text.Encoding.ASCII.GetBytes(line);
          int length = 0;
          int numSpace = 0;
            for(int i=0;i<output.Length;i++)
            {
              result = string.Format("{0}{1:X2}", result, output[i]);
              length = result.Length;
              
              if(((length - numSpace)%4) == 0)
              {
                result += " ";
                numSpace++;
                length = 0;
              }
            }
            return result;
        }

    }
}
