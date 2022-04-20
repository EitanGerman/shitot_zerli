package gui;

import java.net.URL;
import java.util.ResourceBundle;

import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;

import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;
import server.ServerController;

public class ViewOrdersController implements Initializable {
	private static final ObservableList<Order> orders = FXCollections.observableArrayList();
	
	@FXML
	private TableView<Order> OrderTable;

	@FXML
	private TextField colorField;

	@FXML
	private TextField dateField;

	@FXML
	private TextField orderNumber;

	@FXML
	private Button updateButton;

	@FXML
	private TableColumn<Order, String> orderNumberCol;

	@FXML
	private TableColumn<Order, String> priceCol;

	@FXML
	private TableColumn<Order, String> greetingCardCol;

	@FXML
	private TableColumn<Order, String> colorCol;

	@FXML
	private TableColumn<Order, String> dOrderCol;

	@FXML
	private TableColumn<Order, String> shopCol;
	
	@FXML
	private TableColumn<Order, String> dateCol;
	
	@FXML
	private TableColumn<Order, String> orderDateCol;

	@FXML
	void updateDateColor(ActionEvent event) {
		
	}


	@Override
	public void initialize(URL location, ResourceBundle resources) {
		orders.add(new Order("1", "22", "sadas", "blue", "dsfsd", "dsfa", "2022-05-24 12:45:30", "33"));
		orders.add(new Order("2", "33", "sdfsad", "blue", "sdfds", "temp", "2022-05-24 12:45:30", "4554"));
		orderNumberCol.setCellValueFactory(new PropertyValueFactory<>("orderNumber"));
		priceCol.setCellValueFactory(new PropertyValueFactory<>("price"));
		greetingCardCol.setCellValueFactory(new PropertyValueFactory<>("greetingCard"));
		colorCol.setCellValueFactory(new PropertyValueFactory<>("color"));
		dOrderCol.setCellValueFactory(new PropertyValueFactory<>("DOrder"));
		shopCol.setCellValueFactory(new PropertyValueFactory<>("shop"));
		dateCol.setCellValueFactory(new PropertyValueFactory<>("date"));
		orderDateCol.setCellValueFactory(new PropertyValueFactory<>("orderDate"));
		OrderTable.setItems(orders);
	}
}