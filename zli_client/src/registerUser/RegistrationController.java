package registerUser;

import java.util.HashMap;

import client.ClientFormController;
import entities.AccountPayment;
import entities.UserDetails;
import inputs.InputChecker;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.image.ImageView;
import javafx.scene.input.MouseEvent;
import notifications.NotificationManager;
import util.Commands;
import util.ManageScreens;
import util.NotificationType;

public class RegistrationController {

	@FXML
	private Label errorLabel;

	@FXML
	private TextField cardNumberLabel;

	@FXML
	private Button closeButton;

	@FXML
	private Button completeRegistrationButton;

	@FXML
	private TextField emailLabel;

	@FXML
	private TextField firstNameLabel;

	@FXML
	private ImageView homeImage;

	@FXML
	private TextField idLabel;

	@FXML
	private TextField lastNameLabel;

	@FXML
	private TextField monthLabel;

	@FXML
	private TextField passwordLabel;

	@FXML
	private TextField phoneLabel;

	@FXML
	private TextField usernameLabel;

	@FXML
	private TextField yearLabel;

	@FXML
	private TextField cvvLabel;

	@FXML
	void createNewCustomerComplaint(ActionEvent event) {
		if (!checkFields()) {
			errorLabel.setText("*Please fill all the fields before submitting!");
			errorLabel.setVisible(true);
			return;
		} else
			errorLabel.setVisible(false);

		// check id correctness
		if (!InputChecker.checkID(idLabel.getText())) {
			errorLabel.setText("*ID is incorrect - make sure to enter exactly 9 numeric digits!");
			errorLabel.setVisible(true);
			return;
		} else
			errorLabel.setVisible(false);

		if (!InputChecker.checkPaymentInput("pass", "pass",
				cardNumberLabel.getText(), monthLabel.getText(), yearLabel.getText(), cvvLabel.getText(),
				"000000000")) {
			errorLabel.setText("*Please check your payment information!");
			errorLabel.setVisible(true);
			return;
		} else
			errorLabel.setVisible(false);

		// check phone number
		if (!InputChecker.isPhoneNumberVaild(phoneLabel.getText())) {
			errorLabel.setText("*Phone number is incorrect - make sure to enter 9 - 10 numeric digits!");
			errorLabel.setVisible(true);
			return;
		} else
			errorLabel.setVisible(false);

		// add to user_details
		int idAccount = sendUserDetailsToDB();
		if (idAccount == -1) {
			errorLabel.setText("User already exists - try entering a different ID!");
			errorLabel.setVisible(true);
			return;
		} else
			errorLabel.setVisible(false);

		// add to users
		int idUser = sendUserToDB(idAccount);
		if (idUser == -1) {
			errorLabel.setText("Failed to add user!");
			errorLabel.setVisible(true);
			//TODO remove user for user_details table
			deleteUserDetails(idAccount);
			return;
		} else
			errorLabel.setVisible(false);

		//add payment Method
		if (!sendPaymentToDB(idUser)) {
			errorLabel.setText("Failed to Payment info!");
			errorLabel.setVisible(true);
			return;
		} else
			errorLabel.setVisible(false);
		NotificationManager.sendNotification(idUser, NotificationType.REGISTRATION_DISCOUNT, null);
		ManageScreens.displayAlert("User Registered","Congrats on registering a new user");
		ManageScreens.home();
	}

	private void deleteUserDetails(int idAccount) {
		HashMap<String, Object> message = new HashMap<>();
		message.put("command", Commands.DELETE_USER_DETAILS);
		message.put("idAccount", idAccount);
		Object response = ClientFormController.client.accept(message);
		if((boolean)response)
			System.out.println("deleted user: "+ idAccount);
	}

	// this method is used to insert a user into user_details Table
	private int sendUserDetailsToDB() {
		UserDetails ud = new UserDetails(0, firstNameLabel.getText(), lastNameLabel.getText(), idLabel.getText(),
				emailLabel.getText(), phoneLabel.getText(), "Active");
		HashMap<String, Object> message = new HashMap<>();
		message.put("command", Commands.NEW_USER_DETAILS);
		message.put("User Details", ud);
		Object response = ClientFormController.client.accept(message);
		return (int) response;
	}

	// this method is used to insert a user into users Table
	private int sendUserToDB(int idAccount) {
		String username = usernameLabel.getText();
		String password = passwordLabel.getText();
		HashMap<String, Object> message = new HashMap<>();
		message.put("command", Commands.NEW_USERS);
		message.put("username", username);
		message.put("password", password);
		message.put("idAccount", idAccount);
		Object response = ClientFormController.client.accept(message);
		return (int) response;
	}

	// this method is used to insert user payment Method to DB
	private boolean sendPaymentToDB(int idUser) {
		AccountPayment ap = new AccountPayment(firstNameLabel.getText() + " " + lastNameLabel.getText(),
				cardNumberLabel.getText(), monthLabel.getText() + "/" + yearLabel.getText(), cvvLabel.getText(),
				idUser);
		HashMap<String, Object> message = new HashMap<>();
		message.put("command", Commands.INSERT_ACCOUNT_PAYMENT);
		message.put("account payment", ap);
		Object response = ClientFormController.client.accept(message);
		if(((String)response).equals("insert account payment failed"))
			return false;
		return true;
	}

    @FXML
    void returnHome(MouseEvent event) {
    	ManageScreens.home();
    }

    @FXML
    void returnHomebtn(ActionEvent event) {
    	if(ManageScreens.getYesNoDecisionAlert("User Registration", "Are you sure you want to exit?", null))
    		ManageScreens.home();
    }

	// this method is used to check if all fields were filled in this form
	private boolean checkFields() {
		if (firstNameLabel.getText().isEmpty() || lastNameLabel.getText().isEmpty() || idLabel.getText().isEmpty()
				|| monthLabel.getText().isEmpty() || yearLabel.getText().isEmpty() || phoneLabel.getText().isEmpty()
				|| passwordLabel.getText().isEmpty() || usernameLabel.getText().isEmpty()
				|| cardNumberLabel.getText().isEmpty() || emailLabel.getText().isEmpty()
				|| cvvLabel.getText().isEmpty()) {
			return false;
		}
		return true;
	}
}
