package Eliminar;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.StringTokenizer;
import javax.swing.DefaultListModel;
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
public class Eliminar_membre extends javax.swing.JDialog {

    
    Connection con;
    public static Statement stmt = null;
    public static ResultSet rs = null;
    //java.awt.Frame pare;
    javax.swing.JDialog pare_d;
    boolean algun_seleccionat = false;
    public Eliminar_membre(java.awt.Frame parent, Connection c, boolean modal) {
        super(parent, modal);
        initComponents();
        con = c;
        //pare = parent;
        cerca_base_dades();
    }
    public Eliminar_membre(javax.swing.JDialog parent, Connection c, boolean modal) {
        super(parent, modal);
        initComponents();
        con = c;
        pare_d = parent;
        cerca_base_dades();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jButton1 = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        jList1 = new javax.swing.JList<>();
        Eliminar = new javax.swing.JButton();
        jLabel2 = new javax.swing.JLabel();
        jButton2 = new javax.swing.JButton();

        jButton1.setText("jButton1");

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);

        jList1.setModel(new javax.swing.AbstractListModel<String>() {
            String[] strings = { "Item 1", "Item 2", "Item 3", "Item 4", "Item 5" };
            public int getSize() { return strings.length; }
            public String getElementAt(int i) { return strings[i]; }
        });
        jList1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jList1MouseClicked(evt);
            }
            public void mouseEntered(java.awt.event.MouseEvent evt) {
                jList1MouseEntered(evt);
            }
            public void mousePressed(java.awt.event.MouseEvent evt) {
                jList1MousePressed(evt);
            }
        });
        jList1.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                jList1KeyReleased(evt);
            }
            public void keyTyped(java.awt.event.KeyEvent evt) {
                jList1KeyTyped(evt);
            }
        });
        jScrollPane1.setViewportView(jList1);

        Eliminar.setText("Eliminar seleccionat");
        Eliminar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                EliminarActionPerformed(evt);
            }
        });

        jLabel2.setText("Atenció!!! S'eliminarà tota la informació que estigui lligada a aquesta persona!!!");

        jButton2.setText("Tancar");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(40, 40, 40)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 662, Short.MAX_VALUE)
                    .addComponent(jLabel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addComponent(Eliminar)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jButton2, javax.swing.GroupLayout.PREFERRED_SIZE, 73, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(46, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGap(15, 15, 15)
                .addComponent(jLabel2)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 176, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 31, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(Eliminar)
                    .addComponent(jButton2))
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jList1MousePressed(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jList1MousePressed
        /*
        String seleccionat = jList1.getSelectedValue();
        
        System.out.println(seleccionat);
        */
    }//GEN-LAST:event_jList1MousePressed

    private void jList1MouseEntered(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jList1MouseEntered
        
        
    }//GEN-LAST:event_jList1MouseEntered

    private void jList1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jList1MouseClicked
        algun_seleccionat = true;
    }//GEN-LAST:event_jList1MouseClicked

    private void jList1KeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jList1KeyTyped
       
    }//GEN-LAST:event_jList1KeyTyped

    private void jList1KeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jList1KeyReleased
       
    }//GEN-LAST:event_jList1KeyReleased

    private void EliminarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_EliminarActionPerformed
        //JOptionPane.showConfirmDialog(this, "Estás a punt d'esborrar la moto seleccionada" +"" +". \nEstas segur de voler continuar?", "Atenció!!!", 2, HEIGHT);
        StringTokenizer st = new StringTokenizer(jList1.getSelectedValue(),",");
        
        String id = st.nextToken();
        
        
        id = id.replaceAll("\\s+","");
        
        
        String ordre = "DELETE FROM guns WHERE memberid='"+id+"';";
        executeQuery(con, ordre);
        ordre = "DELETE FROM criminalrecord WHERE memberid='"+id+"';";
        executeQuery(con, ordre);
        ordre = "DELETE FROM bikes WHERE memberid='"+id+"';";
        executeQuery(con, ordre);
        ordre = "DELETE FROM members WHERE memberid='"+id+"';";
        executeQuery(con, ordre);
        
        cerca_base_dades();
    }//GEN-LAST:event_EliminarActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        this.dispose();
    }//GEN-LAST:event_jButton2ActionPerformed
   

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton Eliminar;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JList<String> jList1;
    private javax.swing.JScrollPane jScrollPane1;
    // End of variables declaration//GEN-END:variables
    
    /*
    private void busqueda(String in){
        String a = "SELECT * from members LIKE '%"+in+"%';";
        String b = "SELECT * from members;";
        String c = "";
        System.out.println(a);
        if (in.isBlank()){
            c = b;
        }
        else{
            c = a;
        }
        update_list(c);
    }
    */
    private void cerca_base_dades(){
        update_list("SELECT * FROM elimina_member;");
        
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
    
    
    
    private void update_list(String consulta){
        ResultSet result = executeQuery(con, consulta);
        DefaultListModel model = new DefaultListModel();
        
        model.clear();
        
        try {
            
            while ( result.next() ) {
                String out = "";
                ResultSetMetaData rsmd = result.getMetaData();
                int columnas = rsmd.getColumnCount();
                for (int i = 1; i < columnas; i++){
                    out = out+result.getString(i)+", ";
                }
                out = out+result.getString(columnas);
                model.addElement(out);  
            }
               
        } catch (SQLException e){
            
             JOptionPane.showMessageDialog(this, e.getMessage(), "Status", JOptionPane.INFORMATION_MESSAGE);
        }
        
        jList1.setModel(model);
    }
}   
