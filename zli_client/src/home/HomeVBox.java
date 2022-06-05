package home;

import javafx.event.Event;
import javafx.event.EventHandler;
import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.scene.Cursor;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.image.ImageView;
import javafx.scene.layout.VBox;
import util.ManageScreens;
import util.Screens;

/**
 * @author dolev
 *User Button and Icon that Shows On User Home
 */
public class HomeVBox extends VBox {
	private ImageView image;
	private Label cardName;
	private Screens changeToScreen;

	public HomeVBox(Screens changeToScreen) {
		this.setId("buttonCard");
		this.changeToScreen = changeToScreen;
		cardName = new Label();
		cardName.setId("cardLabel");
		cardName.setText(ManageScreens.getName(changeToScreen));
		if (!ManageScreens.getIconPath(changeToScreen).equals(""))
			image = new ImageView(ManageScreens.getIconPath(changeToScreen));
		init();
	}

	/**
	 * Setting label and Icon
	 */
	public void init() {
		this.setPadding(new Insets(10));
		this.setSpacing(10);
		this.getChildren().add(cardName);
		if (image != null) {
			image.setFitWidth(150);
			image.setFitHeight(150);
			this.getChildren().add(image);
		}
		this.setOnMouseClicked(new EventHandler<Event>() {

			@Override
			public void handle(Event event) {
				try {
					ManageScreens.changeScreenTo(changeToScreen);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
		this.setAlignment(Pos.CENTER);
	}
}
