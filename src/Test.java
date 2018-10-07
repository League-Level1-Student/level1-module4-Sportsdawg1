import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTextField;

public class Test implements ActionListener {
	JFrame frame = new JFrame();
	JPanel panel = new JPanel();
	JLabel label = new JLabel("whats my name");
	JButton submit = new JButton("submit");
	JButton hint = new JButton("hint");
	JTextField ok = new JTextField(20);
	String answer = "miller";
	public static void main(String[] args) {
		Test test = new Test();
		test.createUI();
	}
	void createUI() {
		
		panel.add(ok);
		panel.add(submit);
		panel.add(hint);
		panel.add(label);
		frame.add(panel);
		frame.pack();
		frame.setVisible(true);
	}
	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		JButton buttonPressed = (JButton) e.getSource();
		if (buttonPressed == submit && ok.getText().equals(answer)) {
			JOptionPane.showMessageDialog(null, "correct");
		} else if (buttonPressed == hint) {
			System.out.println("starts with m");
		}
		
	}
}
