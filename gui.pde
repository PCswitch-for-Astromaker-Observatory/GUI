/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void countdown1_method(GTextField source, GEvent event) { //_CODE_:countdown1:639665:
} //_CODE_:countdown1:639665:

public void countdown2_method(GTextField source, GEvent event) { //_CODE_:countdown2:323580:
} //_CODE_:countdown2:323580:

public void countdown3_method(GTextField source, GEvent event) { //_CODE_:countdown3:434262:
} //_CODE_:countdown3:434262:

public void countdown4_method(GTextField source, GEvent event) { //_CODE_:countdown4:971368:
} //_CODE_:countdown4:971368:

public void countdown5_method(GTextField source, GEvent event) { //_CODE_:countdown5:475171:
} //_CODE_:countdown5:475171:

public void countdown6_method(GTextField source, GEvent event) { //_CODE_:countdown6:738899:
} //_CODE_:countdown6:738899:

public void countdown7_method(GTextField source, GEvent event) { //_CODE_:countdown7:988485:
} //_CODE_:countdown7:988485:

public void countdown8_method(GTextField source, GEvent event) { //_CODE_:countdown8:615367:
} //_CODE_:countdown8:615367:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  countdown1 = new GTextField(this, 10, 90, 60, 15, G4P.SCROLLBARS_NONE);
  countdown1.setLocalColorScheme(GCScheme.RED_SCHEME);
  countdown1.setOpaque(true);
  countdown1.addEventHandler(this, "countdown1_method");
  countdown2 = new GTextField(this, 90, 90, 60, 15, G4P.SCROLLBARS_NONE);
  countdown2.setLocalColorScheme(GCScheme.RED_SCHEME);
  countdown2.setOpaque(true);
  countdown2.addEventHandler(this, "countdown2_method");
  countdown3 = new GTextField(this, 170, 90, 60, 15, G4P.SCROLLBARS_NONE);
  countdown3.setLocalColorScheme(GCScheme.RED_SCHEME);
  countdown3.setOpaque(true);
  countdown3.addEventHandler(this, "countdown3_method");
  countdown4 = new GTextField(this, 250, 90, 60, 15, G4P.SCROLLBARS_NONE);
  countdown4.setLocalColorScheme(GCScheme.RED_SCHEME);
  countdown4.setOpaque(true);
  countdown4.addEventHandler(this, "countdown4_method");
  countdown5 = new GTextField(this, 330, 90, 60, 15, G4P.SCROLLBARS_NONE);
  countdown5.setLocalColorScheme(GCScheme.RED_SCHEME);
  countdown5.setOpaque(true);
  countdown5.addEventHandler(this, "countdown5_method");
  countdown6 = new GTextField(this, 410, 90, 60, 15, G4P.SCROLLBARS_NONE);
  countdown6.setLocalColorScheme(GCScheme.RED_SCHEME);
  countdown6.setOpaque(true);
  countdown6.addEventHandler(this, "countdown6_method");
  countdown7 = new GTextField(this, 490, 90, 60, 15, G4P.SCROLLBARS_NONE);
  countdown7.setLocalColorScheme(GCScheme.RED_SCHEME);
  countdown7.setOpaque(true);
  countdown7.addEventHandler(this, "countdown7_method");
  countdown8 = new GTextField(this, 570, 90, 60, 15, G4P.SCROLLBARS_NONE);
  countdown8.setLocalColorScheme(GCScheme.RED_SCHEME);
  countdown8.setOpaque(true);
  countdown8.addEventHandler(this, "countdown8_method");
}

// Variable declarations 
// autogenerated do not edit
GTextField countdown1; 
GTextField countdown2; 
GTextField countdown3; 
GTextField countdown4; 
GTextField countdown5; 
GTextField countdown6; 
GTextField countdown7; 
GTextField countdown8; 