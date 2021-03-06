
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author giris
 */
public class Items extends javax.swing.JFrame {

    /**
     * Creates new form Patient
     */
    public Items() {
        initComponents();
        Connect();
        AutoID();
        item_table();
    }
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    
    
    public void Connect()
    {
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/HPMS","root","");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

    
    public void AutoID()
    {
        
        try {
            Statement s = con.createStatement();
            rs = s.executeQuery("select MAX(itemid) from item");
            rs.next();
            rs.getString("MAX(itemid)");
            
            if(rs.getString("MAX(itemid)")==null)
            {
                
                lblitemid.setText("IU001");
            }
            else
            {
                long id = Long.parseLong(rs.getString("MAX(itemid)").substring(2,rs.getString("MAX(itemid)").length()));
                id++;
                
                lblitemid.setText("IU"+ String.format("%03d", id));
            }
                
                
                
                
        } catch (SQLException ex) {
            Logger.getLogger(Patient.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        
        
    }
    
    public void item_table()
    {
        
       
        
        try {
             pst = con.prepareStatement("select * from item");
             rs = pst.executeQuery();
            ResultSetMetaData Rsm = rs.getMetaData();
            int c;
            c = Rsm.getColumnCount();
            
            DefaultTableModel df = (DefaultTableModel)jTable1.getModel();
            df.setRowCount(0);
            
            
            while(rs.next())
            {
                Vector v2 = new Vector();
                
                for(int i = 1; i<=c; i++)
                {
                
                
                v2.add(rs.getString("itemid"));
                v2.add(rs.getString("itemname"));
                v2.add(rs.getString("description"));
                v2.add(rs.getString("sellprice"));
                 v2.add(rs.getString("buyprice"));
                  v2.add(rs.getString("qty"));
                
                }
                
                df.addRow(v2);
                
            }
            
            
            
            
        } catch (SQLException ex) {
            Logger.getLogger(Patient.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        
        
        
    }
    
    
    
    
    
    
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        txtname = new javax.swing.JTextField();
        txtdes = new javax.swing.JTextField();
        lblitemid = new javax.swing.JLabel();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();
        jButton4 = new javax.swing.JButton();
        jScrollPane2 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();
        txtqty = new javax.swing.JTextField();
        jLabel6 = new javax.swing.JLabel();
        txtsellprice = new javax.swing.JTextField();
        jLabel7 = new javax.swing.JLabel();
        txtbuyprice = new javax.swing.JTextField();
        jPanel2 = new javax.swing.JPanel();
        jLabel5 = new javax.swing.JLabel();
        jLabel8bcg = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setUndecorated(true);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel1.setBackground(new java.awt.Color(51, 51, 51));
        jLabel1.setFont(new java.awt.Font("Bahnschrift", 1, 24)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(0, 0, 0));
        jLabel1.setText("Item ID");
        getContentPane().add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 130, -1, -1));

        jLabel2.setBackground(new java.awt.Color(51, 51, 51));
        jLabel2.setFont(new java.awt.Font("Bahnschrift", 1, 24)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(0, 0, 0));
        jLabel2.setText("Item Name");
        getContentPane().add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 210, -1, -1));

        jLabel3.setBackground(new java.awt.Color(51, 51, 51));
        jLabel3.setFont(new java.awt.Font("Bahnschrift", 1, 24)); // NOI18N
        jLabel3.setForeground(new java.awt.Color(0, 0, 0));
        jLabel3.setText("Description");
        getContentPane().add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 280, -1, -1));

        jLabel4.setBackground(new java.awt.Color(51, 51, 51));
        jLabel4.setFont(new java.awt.Font("Bahnschrift", 1, 24)); // NOI18N
        jLabel4.setForeground(new java.awt.Color(0, 0, 0));
        jLabel4.setText("SellPrice");
        getContentPane().add(jLabel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 360, -1, -1));

        txtname.setFont(new java.awt.Font("Bahnschrift", 1, 18)); // NOI18N
        getContentPane().add(txtname, new org.netbeans.lib.awtextra.AbsoluteConstraints(160, 210, 240, -1));

        txtdes.setFont(new java.awt.Font("Bahnschrift", 1, 18)); // NOI18N
        getContentPane().add(txtdes, new org.netbeans.lib.awtextra.AbsoluteConstraints(160, 280, 240, -1));

        lblitemid.setFont(new java.awt.Font("Bahnschrift", 1, 24)); // NOI18N
        lblitemid.setForeground(new java.awt.Color(0, 0, 0));
        lblitemid.setOpaque(true);
        getContentPane().add(lblitemid, new org.netbeans.lib.awtextra.AbsoluteConstraints(160, 130, 240, 37));

        jButton1.setFont(new java.awt.Font("Bahnschrift", 1, 24)); // NOI18N
        jButton1.setIcon(new javax.swing.ImageIcon("C:\\Users\\giris\\Documents\\NetBeansProjects\\HPMS\\src\\hpms\\addbutton.png")); // NOI18N
        jButton1.setText("Add");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });
        getContentPane().add(jButton1, new org.netbeans.lib.awtextra.AbsoluteConstraints(360, 10, 150, 75));

        jButton2.setFont(new java.awt.Font("Bahnschrift", 1, 24)); // NOI18N
        jButton2.setIcon(new javax.swing.ImageIcon("C:\\Users\\giris\\Documents\\NetBeansProjects\\HPMS\\src\\hpms\\updatebutton.png")); // NOI18N
        jButton2.setText("Update");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });
        getContentPane().add(jButton2, new org.netbeans.lib.awtextra.AbsoluteConstraints(510, 10, 170, 75));

        jButton3.setFont(new java.awt.Font("Bahnschrift", 1, 24)); // NOI18N
        jButton3.setIcon(new javax.swing.ImageIcon("C:\\Users\\giris\\Documents\\NetBeansProjects\\HPMS\\src\\hpms\\delete button.png")); // NOI18N
        jButton3.setText("Delete");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });
        getContentPane().add(jButton3, new org.netbeans.lib.awtextra.AbsoluteConstraints(680, 10, 170, 75));

        jButton4.setFont(new java.awt.Font("Bahnschrift", 1, 24)); // NOI18N
        jButton4.setIcon(new javax.swing.ImageIcon("C:\\Users\\giris\\Documents\\NetBeansProjects\\HPMS\\src\\hpms\\exit & logout.png")); // NOI18N
        jButton4.setText("Exit");
        jButton4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton4ActionPerformed(evt);
            }
        });
        getContentPane().add(jButton4, new org.netbeans.lib.awtextra.AbsoluteConstraints(850, 10, 140, 75));

        jTable1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "Item No.", "Item Name", "Description", "SellPrice", "BuyPrice", "Quantity"
            }
        ) {
            Class[] types = new Class [] {
                java.lang.String.class, java.lang.String.class, java.lang.String.class, java.lang.Integer.class, java.lang.Integer.class, java.lang.Integer.class
            };

            public Class getColumnClass(int columnIndex) {
                return types [columnIndex];
            }
        });
        jTable1.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jTable1MouseClicked(evt);
            }
        });
        jScrollPane2.setViewportView(jTable1);

        getContentPane().add(jScrollPane2, new org.netbeans.lib.awtextra.AbsoluteConstraints(410, 90, 580, 500));

        txtqty.setFont(new java.awt.Font("Bahnschrift", 1, 18)); // NOI18N
        getContentPane().add(txtqty, new org.netbeans.lib.awtextra.AbsoluteConstraints(160, 510, 240, -1));

        jLabel6.setBackground(new java.awt.Color(51, 51, 51));
        jLabel6.setFont(new java.awt.Font("Bahnschrift", 1, 24)); // NOI18N
        jLabel6.setForeground(new java.awt.Color(0, 0, 0));
        jLabel6.setText("BuyPrice");
        getContentPane().add(jLabel6, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 430, -1, -1));

        txtsellprice.setFont(new java.awt.Font("Bahnschrift", 1, 18)); // NOI18N
        getContentPane().add(txtsellprice, new org.netbeans.lib.awtextra.AbsoluteConstraints(160, 370, 240, -1));

        jLabel7.setBackground(new java.awt.Color(51, 51, 51));
        jLabel7.setFont(new java.awt.Font("Bahnschrift", 1, 24)); // NOI18N
        jLabel7.setForeground(new java.awt.Color(0, 0, 0));
        jLabel7.setText("Quantity");
        getContentPane().add(jLabel7, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 510, -1, -1));

        txtbuyprice.setFont(new java.awt.Font("Bahnschrift", 1, 18)); // NOI18N
        getContentPane().add(txtbuyprice, new org.netbeans.lib.awtextra.AbsoluteConstraints(160, 440, 240, -1));

        jPanel2.setBackground(new java.awt.Color(255, 255, 255));
        jPanel2.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));

        jLabel5.setBackground(new java.awt.Color(51, 51, 51));
        jLabel5.setFont(new java.awt.Font("Bahnschrift", 1, 48)); // NOI18N
        jLabel5.setForeground(new java.awt.Color(0, 0, 0));
        jLabel5.setText("Create Items");
        jPanel2.add(jLabel5);

        getContentPane().add(jPanel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 10, 340, 70));

        jLabel8bcg.setIcon(new javax.swing.ImageIcon("C:\\Users\\giris\\Documents\\NetBeansProjects\\HPMS\\src\\hpms\\AddItemsPharmacybcg.jpg")); // NOI18N
        getContentPane().add(jLabel8bcg, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, -1, 600));

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        // TODO add your handling code here:
        
        String itemno = lblitemid.getText();
        String itemname = txtname.getText();
        String itemdes = txtdes.getText();
        String sellprice = txtsellprice.getText();
        String buyprice = txtbuyprice.getText();
        String qty = txtqty.getText();
        
        
        
        
        try {
            pst = con.prepareStatement("insert into item(itemid,itemname,description,sellprice,buyprice,qty)values(?,?,?,?,?,?)");
            pst.setString(1, itemno);
            pst.setString(2,itemname );
            pst.setString(3, itemdes);
            pst.setString(4, sellprice);
            pst.setString(5, buyprice);
            pst.setString(6, qty);
            pst.executeUpdate();
            
            JOptionPane.showMessageDialog(this, "Item Inserted!");
            
            AutoID();
            txtname.setText("");
            txtdes.setText("");
             txtsellprice.setText("");
              txtbuyprice.setText("");
               txtqty.setText("");
               
            txtname.requestFocus();
            
            item_table();
            
            
        } catch (SQLException ex) {
            Logger.getLogger(Patient.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        
        
        
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jTable1MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jTable1MouseClicked
        // TODO add your handling code here:
        
        DefaultTableModel d1 = (DefaultTableModel)jTable1.getModel();
        int SelectIndex = jTable1.getSelectedRow();
        
        lblitemid.setText(d1.getValueAt(SelectIndex, 0).toString());
        txtname.setText(d1.getValueAt(SelectIndex, 1).toString());
        txtdes.setText(d1.getValueAt(SelectIndex, 2).toString());
         txtsellprice.setText(d1.getValueAt(SelectIndex, 3).toString());
          txtbuyprice.setText(d1.getValueAt(SelectIndex, 4).toString());
           txtqty.setText(d1.getValueAt(SelectIndex, 5).toString());
        
        jButton1.setEnabled(true);
        
        
        
        
    }//GEN-LAST:event_jTable1MouseClicked

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        // TODO add your handling code here:
        
          
        String itemname = txtname.getText();
        String itemdes = txtdes.getText();
        String sellprice = txtsellprice.getText();
        String buyprice = txtbuyprice.getText();
        String qty = txtqty.getText();
        String itemno = lblitemid.getText();
        
        
        
        try {
            pst = con.prepareStatement("update item set itemname = ?, description = ?, sellprice = ?, buyprice = ?, qty = ? where itemid = ?");
            
            pst.setString(1, itemname);
            pst.setString(2,itemdes );
            pst.setString(3, sellprice);
            pst.setString(4, buyprice);
            pst.setString(5, qty);
            pst.setString(6, itemno);
            pst.executeUpdate();
            
            JOptionPane.showMessageDialog(this, "Item Updated!");
            
            AutoID();
            txtname.setText("");
            txtdes.setText("");
            txtsellprice.setText("");
            txtbuyprice.setText("");
            txtqty.setText("");
               
            txtname.requestFocus();
            
            item_table();
            
            
        } catch (SQLException ex) {
            Logger.getLogger(Patient.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        
        
    }//GEN-LAST:event_jButton2ActionPerformed

    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
        // TODO add your handling code here:
        
           String itemno = lblitemid.getText();
        
        
        
        try {
            pst = con.prepareStatement("delete from item where itemid = ?");
            
            pst.setString(1, itemno);
            
            pst.executeUpdate();
            
            JOptionPane.showMessageDialog(this, "Item Deleted!");
            
           AutoID();
            txtname.setText("");
            txtdes.setText("");
            txtsellprice.setText("");
            txtbuyprice.setText("");
            txtqty.setText("");
               
            txtname.requestFocus();
            
            item_table();
            
           
            
            
        } catch (SQLException ex) {
            Logger.getLogger(Patient.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }//GEN-LAST:event_jButton3ActionPerformed

    private void jButton4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton4ActionPerformed
        // TODO add your handling code here:
        
        this.setVisible(false);
    }//GEN-LAST:event_jButton4ActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Patient.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Patient.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Patient.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Patient.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Patient().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton4;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8bcg;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JTable jTable1;
    private javax.swing.JLabel lblitemid;
    private javax.swing.JTextField txtbuyprice;
    private javax.swing.JTextField txtdes;
    private javax.swing.JTextField txtname;
    private javax.swing.JTextField txtqty;
    private javax.swing.JTextField txtsellprice;
    // End of variables declaration//GEN-END:variables
}
