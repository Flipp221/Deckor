using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using WpfApp1.DataBase;

namespace WpfApp1
{
    /// <summary>
    /// Логика взаимодействия для MainPage.xaml
    /// </summary>
    public partial class MainPage : Window
    {
        public MainPage()
        {
            InitializeComponent();
        }
        private void Mouse_IsVisibleChanged(object sender, DependencyPropertyChangedEventArgs e)
        {
            if (Visibility == Visibility.Visible)
            {
                DeckorEntities.GetContext().ChangeTracker.Entries().ToList().ForEach(a => a.Reload());
                ClientList.ItemsSource = DeckorEntities.GetContext().Tovars.ToList();
            }
        }
        private void Poisk_TextChanged(object sender, TextChangedEventArgs e)
        {
            UpdateTovar();
        }
        private void UpdateTovar()
        {
            var currentKeyboard = DeckorEntities.GetContext().Tovars.ToList();

            currentKeyboard = currentKeyboard.Where(p => p.Name.ToLower().Contains(Poisk.Text.ToLower())).ToList();

            ClientList.ItemsSource = currentKeyboard.OrderBy(p => p.Name).ToList();
        }
        private void Red_Click(object sender, RoutedEventArgs e)
        {
            //addClientsWindow page = new addClientsWindow((sender as Button).DataContext as Clients);
            //page.Show();
            //this.Close();
        }

        private void SortCB_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            //if (SortCB.SelectedIndex == 0)
            //{
            //    ClientList.ItemsSource = DBPolomkaEntities.GetContext().Clients.OrderBy(z => z.Name).ToList();
            //}
            //if (SortCB.SelectedIndex == 1)
            //{
            //    ClientList.ItemsSource = DBPolomkaEntities.GetContext().Clients.OrderBy(z => z.Car_Number).ToList();
            //}
        }

        private void FilterCB_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            //ComboBox combobox = (ComboBox)sender;
            //string item = Convert.ToString(combobox.SelectedItem);
            //if (item == "Фильтрация")
            //{
            //    ClientList.ItemsSource = clientens;
            //    return;
            //}
            //clientens = db.Clients.Where(z => z.Car_Brands.Name_Brand == item).ToList();
            //ClientList.ItemsSource = clientens;
        }

        private void DeleteBtn_Click(object sender, RoutedEventArgs e)
        {
            var ClientsForRemoving = ClientList.SelectedItems.Cast<Tovars>().ToList();

            if (MessageBox.Show($"Вы точно хотите удалить сдедующие{ClientsForRemoving.Count()} элементов?", "Внимение",
                MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                try
                {
                    DeckorEntities.GetContext().Tovars.RemoveRange(ClientsForRemoving);
                    DeckorEntities.GetContext().SaveChanges();
                    MessageBox.Show("Данные удалены");

                    ClientList.ItemsSource = DeckorEntities.GetContext().Tovars.ToList();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString());
                }
            }
        }

        private void AddBtn_Click(object sender, RoutedEventArgs e)
        {
            //addClientsWindow addClients = new addClientsWindow(null);
            //addClients.Show();
            //this.Close();
        }

        private void BackBtn_Click(object sender, RoutedEventArgs e)
        {
            MainWindow mainPage = new MainWindow();
            mainPage.Show();
            this.Close();
        }
    }
}
