package gui;

import java.io.IOException;
import java.net.URL;
import java.util.Arrays;
import java.util.List;
import java.util.ResourceBundle;

import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextArea;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.input.MouseEvent;
import server.ServerController;
import util.ClientDetails;
import util.DataBaseController;


public class ServerFormController implements Initializable {

	/**
	 * contains database name in gui
	 */
	@FXML
	private TextField DBNameField;


	/**
	 * contains database password name in gui
	 */
	@FXML
	private PasswordField DBPasswordTextField;

	/**
	 * contains database user in gui
	 */
	@FXML
	private TextField DBUserTextField;

	/**
	 * contains database IP in gui
	 */
	@FXML
	private TextField IPTextField;

	/**
	 * closing server window button
	 */
	@FXML
	private Button closeButton;

	/**
	 * connecting to database and server button
	 */
	@FXML
	private Button connectButton;

	/**
	 * disconnecting from server
	 */
	@FXML
	private Button disconnectButton;

	/**
	 * contains server port in gui
	 */
	@FXML
	private TextField portTextField;

	/**
	 * text to communicate server messages with users
	 */
	@FXML
	private TextArea consoleField;

	/**
	 * table contaning all connections
	 */
	@FXML
	private TableView<ClientDetails> connectionTable;

	@FXML
	private TableColumn<ClientDetails, String> ipCol;

	@FXML
	private TableColumn<ClientDetails, String> hostCol;
	@FXML
	private TableColumn<ClientDetails, String> statusCol;
	/**
	 * Server controller to enable action with server
	 */
	private ServerController sv;

	/**
	 * By clicking on "Connect" button initialize connecting to Database and then to
	 * server. If Database could not connect properly server would not be started.
	 */
	@FXML
	void clickOnConnect(MouseEvent event) {
		String port = portTextField.getText();
		String ip = IPTextField.getText();
		String dbName = DBNameField.getText();
		String dbUsername = DBUserTextField.getText();
		String dbPassword = DBPasswordTextField.getText();
		String[] stringArray = new String[] { ip, dbName, dbUsername, dbPassword };
		String result = "";

		if (!checkParameters())
			return;
		List<String> connectionArray = Arrays.asList(stringArray);

		DataBaseController.setConnection(connectionArray);
		sv = new ServerController(Integer.parseInt(port), ip);
		StringBuffer buff = new StringBuffer();
		buff.append(sv.connectToDB());
		if (DataBaseController.isConnected) {
			try {
				result = sv.runServer();
				buff.append(result);
				if (result.contains("Server listening for connections on port")) {
					connectButton.setDisable(true);
					disconnectButton.setDisable(false);
				} else {
					if (sv.isListening())
						sv.close();
					System.out.println("Server could not started");

				}
			} catch (Exception e) {
				buff.append("ERROR - Could not listen for clients!\n");
			}
		}
		consoleField.setText(buff.toString());

		// connectionTable.getItems().addAll(ServerController.clients);
	}

	/**
	 * 
	 */
	@FXML
	void clickOnDisconnect(MouseEvent event) {
		sv.disconnectServer();
		System.out.println("Server is closed");
		DataBaseController.Disconnect();
		System.out.println("Database is closed");
		connectButton.setDisable(false);
		disconnectButton.setDisable(true);
		consoleField.setText("Server and Database have disconnected.");
		connectionTable.refresh();
	}

	@FXML
	void closeWindow(MouseEvent event) {
		System.out.println("Dasvidanya ");
		System.exit(0);
	}

	private boolean checkParameters() {
		if (!portTextField.getText().matches("-?\\d+")) { // if the string is an integer, throw Exception
			consoleField.setText("ERROR - Could not connect!");
			return false;
		}
		return true;
	}
	
	@Override
	public void initialize(URL location, ResourceBundle resources) {
		//setCellValueFactory: set for each attribute the cell in the table! so we can present the data in the table.
		ipCol.setCellValueFactory(new PropertyValueFactory<>("clientIP"));  // ip is client IP address
		hostCol.setCellValueFactory(new PropertyValueFactory<>("serverIP"));  // host is server IP address
		statusCol.setCellValueFactory(new PropertyValueFactory<>("status"));  // can be either "connected" or "disconnected"

		connectionTable.setItems(ServerController.clients);

	}

}
