/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poly.com.ui;

import java.util.List;
import javax.swing.table.DefaultTableModel;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartFrame;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.chart.renderer.category.BarRenderer;
import org.jfree.chart.renderer.category.BarRenderer3D;
import org.jfree.data.jdbc.JDBCCategoryDataset;
import poly.com.dao.ThongKeDAO;
import poly.com.utils.Auth;
import poly.com.utils.XDate;
import poly.com.utils.XJdbc;

/**
 *
 * @author nhatt
 */
public class ThongKe extends javax.swing.JFrame {

    ThongKeDAO tkDAO = new ThongKeDAO();
    DefaultTableModel model = new DefaultTableModel();

    /**
     * Creates new form ChonSanPham
     */
    public ThongKe(java.awt.Frame parent, boolean modal) {
//        super(parent, modal);
        initComponents();
        this.init();
    }

    public ThongKe(java.awt.Dialog parent, boolean modal) {
//        super(parent, modal);
        initComponents();
        this.init();
    }
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jButton3 = new javax.swing.JButton();
        buttonGroup1 = new javax.swing.ButtonGroup();
        jPanel1 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        btnLoiNhuan = new javax.swing.JButton();
        btnDoanhThu = new javax.swing.JButton();
        btnTonKho = new javax.swing.JButton();
        jTextField1 = new javax.swing.JTextField();
        jTextField2 = new javax.swing.JTextField();
        jLabel2 = new javax.swing.JLabel();
        jDateChooser1 = new com.toedter.calendar.JDateChooser();
        jLabel3 = new javax.swing.JLabel();
        jDateChooser2 = new com.toedter.calendar.JDateChooser();
        jPanel4 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();

        jButton3.setText("jButton3");

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);

        jPanel1.setBackground(new java.awt.Color(253, 252, 152));
        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Báo cáo-Thống kê", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Tahoma", 1, 14))); // NOI18N

        jPanel2.setBorder(javax.swing.BorderFactory.createTitledBorder("Danh mục thống kê"));

        btnLoiNhuan.setIcon(new javax.swing.ImageIcon(getClass().getResource("/poly/com/image/icon/Dollar.png"))); // NOI18N
        btnLoiNhuan.setText("Lợi nhuận");
        btnLoiNhuan.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnLoiNhuanActionPerformed(evt);
            }
        });

        btnDoanhThu.setIcon(new javax.swing.ImageIcon(getClass().getResource("/poly/com/image/icon/Money.png"))); // NOI18N
        btnDoanhThu.setText("Doanh thu");
        btnDoanhThu.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnDoanhThuActionPerformed(evt);
            }
        });

        btnTonKho.setIcon(new javax.swing.ImageIcon(getClass().getResource("/poly/com/image/icon/Open door.png"))); // NOI18N
        btnTonKho.setText("Tồn kho");
        btnTonKho.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnTonKhoActionPerformed(evt);
            }
        });

        jTextField1.setEditable(false);
        jTextField1.setBackground(new java.awt.Color(0, 204, 255));
        jTextField1.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        jTextField1.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        jTextField1.setText("Chọn mục thống kê");
        jTextField1.setDisabledTextColor(new java.awt.Color(0, 0, 0));

        jTextField2.setEditable(false);
        jTextField2.setBackground(new java.awt.Color(0, 204, 255));
        jTextField2.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        jTextField2.setHorizontalAlignment(javax.swing.JTextField.CENTER);
        jTextField2.setText("Chọn thời gian thống kê");
        jTextField2.setDisabledTextColor(new java.awt.Color(0, 0, 0));
        jTextField2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jTextField2ActionPerformed(evt);
            }
        });

        jLabel2.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jLabel2.setText("Thống kê từ ngày:");

        jDateChooser1.setDateFormatString("dd/MM/yyyy");

        jLabel3.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jLabel3.setText("Đến ngày:");

        jDateChooser2.setDateFormatString("dd/MM/yyyy");

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, jPanel2Layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(jTextField2, javax.swing.GroupLayout.DEFAULT_SIZE, 202, Short.MAX_VALUE))
                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, jPanel2Layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(jTextField1))
                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, jPanel2Layout.createSequentialGroup()
                        .addGap(22, 22, 22)
                        .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(btnDoanhThu, javax.swing.GroupLayout.PREFERRED_SIZE, 174, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(btnLoiNhuan, javax.swing.GroupLayout.PREFERRED_SIZE, 174, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(btnTonKho, javax.swing.GroupLayout.PREFERRED_SIZE, 174, javax.swing.GroupLayout.PREFERRED_SIZE))))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel2Layout.createSequentialGroup()
                .addGap(0, 0, Short.MAX_VALUE)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jDateChooser2, javax.swing.GroupLayout.PREFERRED_SIZE, 170, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel3)
                    .addComponent(jDateChooser1, javax.swing.GroupLayout.PREFERRED_SIZE, 170, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 111, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(25, 25, 25))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jTextField1, javax.swing.GroupLayout.PREFERRED_SIZE, 28, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(27, 27, 27)
                .addComponent(btnDoanhThu, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(btnLoiNhuan, javax.swing.GroupLayout.PREFERRED_SIZE, 40, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(btnTonKho, javax.swing.GroupLayout.PREFERRED_SIZE, 37, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jTextField2, javax.swing.GroupLayout.PREFERRED_SIZE, 28, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(26, 26, 26)
                .addComponent(jLabel2)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jDateChooser1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jLabel3)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jDateChooser2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jPanel4.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Hiển thị", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Tahoma", 0, 12))); // NOI18N

        jTable1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ) {
            boolean[] canEdit = new boolean [] {
                false, false, false, false
            };

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        jScrollPane1.setViewportView(jTable1);

        javax.swing.GroupLayout jPanel4Layout = new javax.swing.GroupLayout(jPanel4);
        jPanel4.setLayout(jPanel4Layout);
        jPanel4Layout.setHorizontalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel4Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 580, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );
        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel4Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(18, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jPanel4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jPanel4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnLoiNhuanActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnLoiNhuanActionPerformed

        try {
            String query = " SELECT DISTINCT SP.MaSP,SUM(SP.GiaBan * CTPX.SoLuongBan ) +SUM(SP.GiaBan * CTPX.SoLuongBan *(SP.VAT/100)) - SUM(SP.GiaMua * CTPN.SoLuong) as 'Loi nhuan'  FROM SANPHAM SP\n"
                    + "  INNER JOIN CHITIETPHIEUNHAP CTPN ON SP.MaSP = CTPN.MaSP\n"
                    + "  INNER JOIN CHITIETPHIEUXUAT CTPX ON SP.MaSP = CTPX.MaSP\n"
                    + "  WHERE YEAR(CTPN.NgayNhap) >2017 AND YEAR(CTPX.NgayXuat) > 2017\n"
                    + "  GROUP BY SP.MaSP";
            JDBCCategoryDataset dataset = new JDBCCategoryDataset(XJdbc.ConnectDb(), query);
            JFreeChart chart = ChartFactory.createBarChart3D("Thống kê chi tiết", "Mã Sản Phẩm", "Lợi nhuận", dataset, PlotOrientation.VERTICAL, true, true, true);
            BarRenderer renderer = null;
            CategoryPlot plot = null;
            renderer = new BarRenderer3D();

            ChartFrame frame = new ChartFrame("Bảng thống kê", chart);
            frame.setSize(1600, 650);
            frame.setLocationRelativeTo(null);
            frame.setVisible(true);

        } catch (Exception e) {
            e.printStackTrace();
        }
        fillTableLoiNhuan();
    }//GEN-LAST:event_btnLoiNhuanActionPerformed

    private void btnDoanhThuActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnDoanhThuActionPerformed

        try {
            String query = " select DISTINCT SANPHAM.MaSP, SUM(SANPHAM.GiaBan * CHITIETPHIEUXUAT.SoLuongBan )+(SUM(SANPHAM.GiaBan * CHITIETPHIEUXUAT.SoLuongBan )*(SANPHAM.VAT/100)) as 'Doanh thu'\n"
                    + " from [QuanLySieuThi].[dbo].[SANPHAM] ,CHITIETPHIEUXUAT where SANPHAM.MaSP = CHITIETPHIEUXUAT.MaSP\n"
                    + "  group by SANPHAM.MaSP,SANPHAM.VAT";
            JDBCCategoryDataset dataset = new JDBCCategoryDataset(XJdbc.ConnectDb(), query);
            JFreeChart chart = ChartFactory.createBarChart3D("Thống kê chi tiết", "Mã Sản Phẩm", "Doanh thu", dataset, PlotOrientation.VERTICAL, true, true, true);
            BarRenderer renderer = null;
            CategoryPlot plot = null;
            renderer = new BarRenderer3D();

            ChartFrame frame = new ChartFrame("Bảng thống kê", chart);
            frame.setSize(1600, 650);
            frame.setLocationRelativeTo(null);
            frame.setVisible(true);

        } catch (Exception e) {
            e.printStackTrace();
        }
        fillTableDoanhThu();
    }//GEN-LAST:event_btnDoanhThuActionPerformed

    private void btnTonKhoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnTonKhoActionPerformed

        try {
            String query = "select PHIEUKKCHITIET.MaSP,SUM(SLTonKho) SLTonKho FROM PHIEUKKCHITIET\n"
                    + "GROUP BY PHIEUKKCHITIET.MaSP";
            JDBCCategoryDataset dataset = new JDBCCategoryDataset(XJdbc.ConnectDb(), query);
            JFreeChart chart = ChartFactory.createBarChart3D("Thống kê chi tiết", "Mã Sản Phẩm", "Số lượng ", dataset, PlotOrientation.VERTICAL, true, true, true);
            BarRenderer renderer = null;
            CategoryPlot plot = null;
            renderer = new BarRenderer3D();

            ChartFrame frame = new ChartFrame("Bảng thống kê", chart);
            frame.setSize(1600, 650);
            frame.setLocationRelativeTo(null);
            frame.setVisible(true);

        } catch (Exception e) {
            e.printStackTrace();
        }
        model.addColumn("MaSP");
        model.addColumn("So luong");
        jTable1.setModel(model);
        fillTableTonKho();

    }//GEN-LAST:event_btnTonKhoActionPerformed

    private void jTextField2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jTextField2ActionPerformed

    }//GEN-LAST:event_jTextField2ActionPerformed

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
            java.util.logging.Logger.getLogger(ChonSanPham.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(ChonSanPham.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(ChonSanPham.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(ChonSanPham.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the dialog */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                ThongKe dialog = new ThongKe(new javax.swing.JFrame(), true);
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
    private javax.swing.JButton btnDoanhThu;
    private javax.swing.JButton btnLoiNhuan;
    private javax.swing.JButton btnTonKho;
    private javax.swing.ButtonGroup buttonGroup1;
    private javax.swing.JButton jButton3;
    private com.toedter.calendar.JDateChooser jDateChooser1;
    private com.toedter.calendar.JDateChooser jDateChooser2;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable jTable1;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField jTextField2;
    // End of variables declaration//GEN-END:variables
private void init() {
        setLocationRelativeTo(null);
    }

    private void fillTableDoanhThu() {
        DefaultTableModel model = (DefaultTableModel) jTable1.getModel();
        model.setRowCount(0);
        List<Object[]> list = tkDAO.getDoanhThu(XDate.convertDate(jDateChooser1.getDate()), XDate.convertDate(jDateChooser2.getDate()));
        for (Object[] row : list) {
            model.addRow(new Object[]{row[0], row[1]});
        }
    }

    private void fillTableTonKho() {
        DefaultTableModel model = (DefaultTableModel) jTable1.getModel();
        model.setRowCount(0);
        List<Object[]> list = tkDAO.getTonKho();
        for (Object[] row : list) {
            model.addRow(row);
        }
    }

    private void fillTableLoiNhuan() {
        DefaultTableModel model = (DefaultTableModel) jTable1.getModel();
        model.setRowCount(0);
        List<Object[]> list = tkDAO.getLoiNhuan(XDate.convertDate(jDateChooser1.getDate()), XDate.convertDate(jDateChooser2.getDate()));
        for (Object[] row : list) {
            model.addRow(new Object[]{row[0], row[1]});
        }
    }

}
