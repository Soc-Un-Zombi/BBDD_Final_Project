package Afegir;




import java.awt.Color;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.StringTokenizer;
import javax.swing.JOptionPane;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Ramon Trilla Urteaga i Joan Francesc Pedro García
 */
public class Afegir_arma extends javax.swing.JDialog {

    /**
     * Creates new form Info_personal
     */
    Connection con;
    public static Statement stmt = null;
    public static ResultSet rs = null;
    private int member_id = 0;
    Afegir.Afegir_personal pare_dia = null;
    Veure.Veure_armes pare_v = null;
    Modifica.Modificar_personal pare_m = null;
    
    public Afegir_arma(Veure.Veure_armes parent, boolean modal, Connection a) {
        super(parent, modal);
        initComponents();
        con = a;
        pare_v = parent;
        carregar_propietaris();
    }
    
    public Afegir_arma(Afegir.Afegir_personal parent, boolean modal, Connection a, int id) {
        super(parent, modal);
        initComponents();
        con = a;
        member_id = id;
        propietari_combobox.removeAllItems();
        propietari_combobox.addItem(String.valueOf(member_id));
        propietari_combobox.setEnabled(false);
        pare_dia = parent;
    }
    
    public Afegir_arma(Modifica.Modificar_personal parent, boolean modal, Connection a, int id) {
        super(parent, modal);
        initComponents();
        con = a;
        member_id = id;
        propietari_combobox.removeAllItems();
        propietari_combobox.addItem(String.valueOf(member_id));
        propietari_combobox.setEnabled(false);
        pare_m = parent;
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jDialog1 = new javax.swing.JDialog();
        jTextField1 = new javax.swing.JTextField();
        jPanel1 = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel13 = new javax.swing.JLabel();
        model_textfield = new javax.swing.JTextField();
        propietari_combobox = new javax.swing.JComboBox<>();
        affegir_button = new javax.swing.JButton();
        jLabel14 = new javax.swing.JLabel();
        marcal_textfield = new javax.swing.JTextField();
        tipus_combo = new javax.swing.JComboBox<>();
        jLabel10 = new javax.swing.JLabel();

        javax.swing.GroupLayout jDialog1Layout = new javax.swing.GroupLayout(jDialog1.getContentPane());
        jDialog1.getContentPane().setLayout(jDialog1Layout);
        jDialog1Layout.setHorizontalGroup(
            jDialog1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 400, Short.MAX_VALUE)
        );
        jDialog1Layout.setVerticalGroup(
            jDialog1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 300, Short.MAX_VALUE)
        );

        jTextField1.setText("jTextField1");

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);

        jLabel2.setText("Propietari:");

        jLabel4.setText("Tipus:");

        jLabel13.setText("Model:");

        model_textfield.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                model_textfieldActionPerformed(evt);
            }
        });
        model_textfield.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                model_textfieldKeyReleased(evt);
            }
        });

        propietari_combobox.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Error" }));

        affegir_button.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        affegir_button.setText("Afegir");
        affegir_button.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                affegir_buttonActionPerformed(evt);
            }
        });

        jLabel14.setText("Marca:");

        marcal_textfield.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                marcal_textfieldActionPerformed(evt);
            }
        });
        marcal_textfield.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                marcal_textfieldKeyReleased(evt);
            }
        });

        tipus_combo.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Arma de foc", "Arma blanca" }));

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(0, 338, Short.MAX_VALUE)
                        .addComponent(affegir_button, javax.swing.GroupLayout.PREFERRED_SIZE, 106, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(jLabel14, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(jLabel13, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(jLabel4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(marcal_textfield)
                            .addComponent(propietari_combobox, javax.swing.GroupLayout.Alignment.TRAILING, 0, 300, Short.MAX_VALUE)
                            .addComponent(model_textfield, javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(tipus_combo, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))))
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(propietari_combobox, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel14)
                    .addComponent(marcal_textfield, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel13)
                    .addComponent(model_textfield, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel4)
                    .addComponent(tipus_combo, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addComponent(affegir_button, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE))
        );

        jLabel10.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Imatges/gun-pistol.png"))); // NOI18N

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jLabel10)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(10, 10, 10))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jLabel10, javax.swing.GroupLayout.PREFERRED_SIZE, 104, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(73, 73, 73))
            .addGroup(layout.createSequentialGroup()
                .addGap(21, 21, 21)
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void affegir_buttonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_affegir_buttonActionPerformed
        afegir();
        if (pare_dia != null){
            pare_dia.update_guns();   
        }
        else if (pare_v != null){
            pare_v.cerca_base_dades();
        }
        else{
            pare_m.update_guns();
        }
        this.dispose();
    }//GEN-LAST:event_affegir_buttonActionPerformed

    private void marcal_textfieldActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_marcal_textfieldActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_marcal_textfieldActionPerformed

    private void marcal_textfieldKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_marcal_textfieldKeyReleased
        if (marcal_textfield.getText().isBlank()){
            marcal_textfield.setBackground(Color.red);
        }
        else{
            marcal_textfield.setBackground(Color.white);
        }
        comprovar();
    }//GEN-LAST:event_marcal_textfieldKeyReleased

    private void model_textfieldActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_model_textfieldActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_model_textfieldActionPerformed

    private void model_textfieldKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_model_textfieldKeyReleased
        if (model_textfield.getText().isBlank()){
            model_textfield.setBackground(Color.red);
        }
        else{
            model_textfield.setBackground(Color.white);
        }
        comprovar();
    }//GEN-LAST:event_model_textfieldKeyReleased

    
    

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton affegir_button;
    private javax.swing.JDialog jDialog1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField marcal_textfield;
    private javax.swing.JTextField model_textfield;
    private javax.swing.JComboBox<String> propietari_combobox;
    private javax.swing.JComboBox<String> tipus_combo;
    // End of variables declaration//GEN-END:variables

    
    //funciona
    private void afegir(){
        int id;
        StringTokenizer st = new StringTokenizer(propietari_combobox.getSelectedItem().toString(),",");
        id = Integer.valueOf(st.nextElement().toString());
        String sql = "INSERT INTO guns (brand, model, guntype, memberid) "
        
                + "VALUES (" + 
                                
                "'" + marcal_textfield.getText() + "'"
                
                + "," +
                
                "'" + model_textfield.getText() + "'"
                
                + "," +
                
                "'" + tipus_combo.getSelectedItem() + "'"
                
                + "," +
                                
                id+
                
                ");";
        
        System.out.println(sql);
        try {
            
            stmt = con.createStatement();          
        
            stmt.executeUpdate(sql);
            
            JOptionPane.showMessageDialog(this, "S'ha afegit correctament!", "Status", JOptionPane.INFORMATION_MESSAGE);
            
        } catch (SQLException e){
            
            JOptionPane.showMessageDialog(this, e.getMessage(), "Status", JOptionPane.INFORMATION_MESSAGE);           
            
        }
    }
    
    
    private void carregar_propietaris(){
        ResultSet res = executeQuery(con, "SELECT memberid, firstname, lastname FROM members;");
        loadBranches(res,propietari_combobox);
        
    }
    
    
    
    private ResultSet executeQuery (Connection con, String query){
        
        try {
        
            stmt = con.createStatement();
            
            rs = stmt.executeQuery(query);           
            
            return rs;
        
        } catch (SQLException e){
          
            //JOptionPane.showMessageDialog(this, e.getMessage(), "Status", JOptionPane.INFORMATION_MESSAGE);
            
            return null;
        }
    }
    
    private void loadBranches(ResultSet rs_o, javax.swing.JComboBox<String> in ){       
        in.removeAllItems();
        
        try {
            ResultSetMetaData rsmd = rs_o.getMetaData();
            int columnas = rsmd.getColumnCount();
            while ( rs_o.next() ) {  
                String result = "";
                for (int i = 1; i < columnas; i++){
                    result = result+rs_o.getString(i)+", ";
                }
                result = result+rs_o.getString(columnas);
               in.addItem(result);                        
               
            }  
        } catch (SQLException e){
            
             //JOptionPane.showMessageDialog(this, e.getMessage(), "Status", JOptionPane.INFORMATION_MESSAGE);
        }
    }
    
    private void comprovar(){
        affegir_button.setEnabled(test());
    }
    
    private boolean test(){
        if (marcal_textfield.getText().isBlank()){
            return false;
        }
        if (model_textfield.getText().isBlank()){
            return false;
        }
        return true;
    }
}
