package home;

import javafx.event.Event;
import javafx.event.EventHandler;
import javafx.geometry.Pos;
import javafx.scene.control.Button;
import javafx.scene.image.ImageView;
import javafx.scene.layout.VBox;
import util.ManageScreens;
import util.Screens;
import util.UserType;

public class HomeVBox extends VBox {
	private ImageView image;
	private Button button;
	private Screens changeToScreen;

	public HomeVBox(Screens changeToScreen) {
		this.changeToScreen = changeToScreen;
		button = new Button();
		button.setText(ManageScreens.getName(changeToScreen));
		if (!ManageScreens.getIconPath(changeToScreen).equals(""))
			image = new ImageView(ManageScreens.getIconPath(changeToScreen));
		init();
	}

	public void init() {
		this.getChildren().add(button);
		if (image != null) {
			image.setFitWidth(147);
			image.setFitHeight(150);
			this.getChildren().add(image);
		}
		button.setOnMouseClicked(new EventHandler<Event>() {

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
	public String toString()
	{
		return ManageScreens.getName(changeToScreen);
	}

}
