/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poly.com.ui;

import java.util.logging.Level;
import java.util.logging.Logger;
import poly.com.dao.NhanVienDAO;
import poly.com.modal.NhanVien;
import poly.com.utils.Auth;
import poly.com.utils.MsgBox;
import poly.com.utils.ScannerAudio;



/**
 *
 * @author DELL-PC
 */
public class DangNhap extends javax.swing.JDialog {

    /**
     * Creates new form dangnhap
     */
    public DangNhap(java.awt.Frame parent, boolean modal) {
        super(parent, modal);
        initComponents();
        init();
       
    }
    NhanVienDAO nvDAO = new NhanVienDAO(); 
    private void init(){ 
        setLocationRelativeTo(null);
       
    } 
    private void login() { 
        String taiKhoan = txtTaiKhoan.getText();
        String matKhau = new String(txtmatkhau.getPassword());
        NhanVien nv = nvDAO.selectByUser(taiKhoan);
        if(nv == null){
            MsgBox.alert(this, "Sai tên đăng nhập");
        }else if(!matKhau.equals(nv.getMatKhau())){
            MsgBox.alert(this, "Sai mật khẩu!");
        }else{ 
            Auth.user = nv;
            MsgBox.alert(this, "Đăng nhập thành công !!!");
            this.dispose();
        }
    } 
    private void exit(){ 
        if(MsgBox.confirm(this, "Bạn có muốn kết thúc ứng dụng?")){
            System.exit(0);
        }
            
    }
    QRCode qrCode;
    private void loginWithQRCode() throws InterruptedException{
        qrCode = new QRCode();
        qrCode.setVisible(true);

        Thread thread = new Thread(){
            @Override
            public void run() {
                while (true) {                    
                    
                        try {
                            sleep(100);
                        } catch (InterruptedException ex) {
                            Logger.getLogger(DangNhap.class.getName()).log(Level.SEVERE, null, ex);
                        }
                        NhanVien nv = nvDAO.loginQRCode(QRCode.result_field.getText());
                            if(nv != null){
//                                ScannerAudio.ScanQRSound();
                                Auth.user = nv;
                                DangNhap.this.dispose();
                                QRCode.getWebcam().close();
                                qrCode.setVisible(false);
                                qrCode.dispose();
                            }
                }
            }
              
    };
       thread.start();
       
       
 }
    
   
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        jPanel1 = new javax.swing.JPanel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        btnDangNhap = new javax.swing.JButton();
        btnKetThuc = new javax.swing.JButton();
        txtmatkhau = new javax.swing.JPasswordField();
        txtTaiKhoan = new javax.swing.JTextField();
        lbldn = new javax.swing.JLabel();
        lblQRCode = new javax.swing.JLabel();
        lblQuenMK = new javax.swing.JLabel();

        jLabel1.setText("jLabel1");

        setDefaultCloseOperation(javax.swing.WindowConstants.DO_NOTHING_ON_CLOSE);

        jPanel1.setBackground(new java.awt.Color(255, 255, 153));

        jLabel3.setIcon(new javax.swing.ImageIcon(getClass().getResource("/poly/com/image/logoministop1.png"))); // NOI18N

        jLabel4.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel4.setForeground(new java.awt.Color(0, 0, 153));
        jLabel4.setText("ĐĂNG NHẬP");

        jLabel5.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel5.setForeground(new java.awt.Color(153, 0, 153));
        jLabel5.setText("Tên đăng nhập");

        jLabel6.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel6.setForeground(new java.awt.Color(153, 0, 153));
        jLabel6.setText("Mật khẩu");

        btnDangNhap.setBackground(new java.awt.Color(255, 255, 204));
        btnDangNhap.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        btnDangNhap.setIcon(new javax.swing.ImageIcon(getClass().getResource("/poly/com/image/icon/Key.png"))); // NOI18N
        btnDangNhap.setText("Đăng nhập");
        btnDangNhap.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnDangNhapActionPerformed(evt);
            }
        });

        btnKetThuc.setBackground(new java.awt.Color(255, 255, 204));
        btnKetThuc.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        btnKetThuc.setIcon(new javax.swing.ImageIcon(getClass().getResource("/poly/com/image/icon/Exit button.png"))); // NOI18N
        btnKetThuc.setText("Kết thúc");
        btnKetThuc.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnKetThucActionPerformed(evt);
            }
        });

        txtmatkhau.setBackground(new java.awt.Color(204, 204, 255));
        txtmatkhau.setText("123");

        txtTaiKhoan.setBackground(new java.awt.Color(204, 204, 255));
        txtTaiKhoan.setText("TanNHN");

        lbldn.setFont(new java.awt.Font("Tahoma", 3, 11)); // NOI18N
        lbldn.setForeground(new java.awt.Color(102, 0, 102));
        lbldn.setText("Mời Đăng Nhập");

        lblQRCode.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        lblQRCode.setText("Đăng nhập bằng QR Code?");
        lblQRCode.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                lblQRCodeMouseClicked(evt);
            }
        });

        lblQuenMK.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        lblQuenMK.setText("Quên mật khẩu?");
        lblQuenMK.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                lblQuenMKMouseClicked(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(jLabel4)
                        .addGap(0, 0, Short.MAX_VALUE))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 222, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addGap(35, 35, 35)
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(jPanel1Layout.createSequentialGroup()
                                        .addComponent(lblQRCode)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                        .addComponent(lblQuenMK, javax.swing.GroupLayout.PREFERRED_SIZE, 109, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                                        .addGap(0, 0, Short.MAX_VALUE)
                                        .addComponent(btnDangNhap)
                                        .addGap(18, 18, 18)
                                        .addComponent(btnKetThuc))
                                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                            .addGroup(jPanel1Layout.createSequentialGroup()
                                                .addComponent(jLabel6)
                                                .addGap(0, 0, Short.MAX_VALUE))
                                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                                                .addGap(0, 0, Short.MAX_VALUE)
                                                .addComponent(jLabel5)))
                                        .addGap(18, 18, 18)
                                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                            .addComponent(txtTaiKhoan, javax.swing.GroupLayout.PREFERRED_SIZE, 194, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addComponent(txtmatkhau, javax.swing.GroupLayout.PREFERRED_SIZE, 194, javax.swing.GroupLayout.PREFERRED_SIZE))))
                                .addGap(84, 84, 84))
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addComponent(lbldn)
                                .addGap(144, 144, 144))))))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel4)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(26, 26, 26)
                        .addComponent(lbldn)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(txtTaiKhoan, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel5))
                        .addGap(18, 18, 18)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(txtmatkhau, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel6))
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addGap(32, 32, 32)
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                    .addComponent(btnDangNhap)
                                    .addComponent(btnKetThuc)))
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                    .addComponent(lblQRCode)
                                    .addComponent(lblQuenMK)))))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(18, 18, 18)
                        .addComponent(jLabel3)))
                .addContainerGap(28, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 606, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnKetThucActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnKetThucActionPerformed
        // TODO add your handling code here:
       exit();
    }//GEN-LAST:event_btnKetThucActionPerformed

    private void btnDangNhapActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnDangNhapActionPerformed
        // TODO add your handling code here:
        login();
    }//GEN-LAST:event_btnDangNhapActionPerformed

    private void lblQRCodeMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lblQRCodeMouseClicked
        try {
            loginWithQRCode();
        } catch (InterruptedException ex) {
            Logger.getLogger(DangNhap.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_lblQRCodeMouseClicked

    private void lblQuenMKMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_lblQuenMKMouseClicked
        forgotPassword();
    }//GEN-LAST:event_lblQuenMKMouseClicked
   
    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                DangNhap dialog = new DangNhap(new javax.swing.JFrame(), true);
                dialog.addWindowListener(new java.awt.event.WindowAdapter() {
                    @Override
                    public void windowClosing(java.awt.event.WindowEvent e) {
                        System.exit(0);
                    }
                });
                dialog.setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnDangNhap;
    private javax.swing.JButton btnKetThuc;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JLabel lblQRCode;
    private javax.swing.JLabel lblQuenMK;
    private javax.swing.JLabel lbldn;
    private javax.swing.JTextField txtTaiKhoan;
    private javax.swing.JPasswordField txtmatkhau;
    // End of variables declaration//GEN-END:variables

    private void forgotPassword() {
        new QuenMatKhau(null, true).setVisible(true);
    }
}
