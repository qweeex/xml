using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml;

namespace ConsoleApplication1
{
    class Program
    {
        
        static void Main(string[] args)
        {
            XmlDocument doc = new XmlDocument();
            doc.Load("Inventory.xml");
            while (true)
            {
                int i = ShowMenu(doc);
                if (i == 0) break;
            }
        }
        static int ShowMenu(XmlDocument doc)
        {
            Console.WriteLine("1: Просмотр содержимого");
            Console.WriteLine("2: Добавление содержимого");
            Console.WriteLine("3: Изменение содержимого");
            Console.WriteLine("4: Удаление содержимого");
            Console.WriteLine("0: Выход");
            Console.Write("Введите ваш выбор:");
            string str = Console.ReadLine();
            switch (str)
            {
                case "0": return 0; break;
                case "1": ShowBooks(doc); return 1;  break;
                case "2": AddBook(doc); return 1; break;
                case "3": ChangeBook(doc); return 1; break;
                case "4": DeleteBook(doc); return 1; break;
                default: Console.WriteLine("Введите одну из указанных цифр"); return 1; break;
            }
        }
        static void ShowBooks(XmlDocument doc)
        {
            XmlNodeList list = doc.GetElementsByTagName("BOOK");
            int num = 1;
            foreach (XmlNode node in list)
            {
                Console.WriteLine(num++);
                Console.WriteLine("Название: {0}", node.ChildNodes[0].InnerText);
                Console.WriteLine("Автор: {0}", node.ChildNodes[1].InnerText);
                Console.WriteLine("Обложка: {0}", node.ChildNodes[2].InnerText);
                Console.WriteLine("Кол-во страниц: {0}", node.ChildNodes[3].InnerText);
                Console.WriteLine("Цена: {0}", node.ChildNodes[4].InnerText);
                Console.WriteLine();
            }
        }
        static void AddBook(XmlDocument doc)
        {
            XmlElement book = doc.CreateElement("BOOK");
            XmlElement title = doc.CreateElement("TITLE");
            Console.WriteLine("Введите название книги:");
            title.InnerText = Console.ReadLine();
            book.InsertAfter(title, book.LastChild);
            XmlElement author = doc.CreateElement("AUTHOR");
            Console.WriteLine("Введите автора книги:");
            author.InnerText = Console.ReadLine();
            book.InsertAfter(author, book.LastChild);
            XmlElement binding = doc.CreateElement("BINDING");
            Console.WriteLine("Введите тип обложки:");
            binding.InnerText = Console.ReadLine();
            book.InsertAfter(binding, book.LastChild);
            XmlElement pages = doc.CreateElement("PAGES");
            Console.WriteLine("Введите кол-во страниц:");
            pages.InnerText = Console.ReadLine();
            book.InsertAfter(pages, book.LastChild);
            XmlElement price = doc.CreateElement("PRICE");
            Console.WriteLine("Введите цену книги:");
            price.InnerText = Console.ReadLine();
            book.InsertAfter(price, book.LastChild);
            doc.DocumentElement.InsertAfter(book, doc.DocumentElement.LastChild);
            doc.Save("Inventory.xml");
        }
        static void ChangeBook(XmlDocument doc)
        {
            Console.WriteLine("Введите номер изменяемой книги");
            int num = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Что изменить: \n 1: Название \n 2: Автор \n 3: Тип обложки \n 4: Кол-во страниц \n 5: Цена");
            int c = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Введите новое значение");
            string str = Console.ReadLine();
            doc.DocumentElement.ChildNodes[num - 1].ChildNodes[c - 1].InnerText = str;
            doc.Save("Inventory.xml");
        }
        static void DeleteBook(XmlDocument doc)
        {
            Console.WriteLine("Введите номер удаляемой книги");
            int num = Convert.ToInt32(Console.ReadLine());
            doc.DocumentElement.RemoveChild(doc.DocumentElement.ChildNodes[num - 1]);
        }
    }
}