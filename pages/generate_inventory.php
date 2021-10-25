<?php

require('../includes/connection.php');
// E CHECK KUNG NEW MONTH NABA FOR THE NEW STOCKS AND NEW BEGINNING
                date_default_timezone_set('Asia/Manila');
                $vDate22 = '';
                $vDate22 = date('Hisd', time());
                $vDate222 = date('Y-m-d', time());
                $tmonth = date("m", strtotime($vDate222));
                $tyear = date("Y", strtotime($vDate222));
                $tday = date("d", strtotime($vDate222));

                $sql1 = mysqli_query($db, "SELECT * FROM product WHERE ENDED ='NO' ");
                    if (mysqli_num_rows($sql1)) {
                        while ($row1 = mysqli_fetch_assoc($sql1)) {
                        $d_stock_day = $row1['DATE_STOCK_IN_DAY'];
                        $d_stock_month = $row1['DATE_STOCK_IN_MONTH'];
                        $d_stock_year = $row1['DATE_STOCK_IN_YEAR'];
                        $p_code = $row1['PRODUCT_CODE'];
                        $p_name = $row1['NAME'];
                        $p_desc = $row1['DESCRIPTION'];
                        $p_c_or_b = $row1['CASEORBOTTLE'];
                        $p_balance = $row1['BALANCE'];
                        $p_qty_stock = $row1['QTY_STOCK'];
                        $p_on_hand = $row1['ON_HAND'];
                        $p_reg_price = $row1['REGULAR_PRICE'];
                        $p_price = $row1['PRICE'];
                        $p_old_total = $row1['OLD_TOTAL'];
                        $p_old_price = $row1['OLD_PRICE'];
                        $p_cat_id = $row1['CATEGORY_ID'];
                        $p_variant_id = $row1['VARIANT_ID'];
                        $p_supplier_id = $row1['SUPPLIER_ID'];
                        $p_d_stock = $row1['DATE_STOCK_IN'];
                        
                        if ($d_stock_day == '$tday' && $d_stock_month == '$tmonth' && $d_stock_year == '$tyear') {
                            
                        }else{

                            $query2 = mysqli_query($db, "INSERT INTO product (PRODUCT_CODE, NAME, DESCRIPTION, CASEORBOTTLE, BALANCE, ON_HAND, REGULAR_PRICE, PRICE, OLD_TOTAL, OLD_PRICE, CATEGORY_ID, VARIANT_ID, SUPPLIER_ID, DATE_STOCK_IN, ENDED, DATE_STOCK_IN_MONTH, DATE_STOCK_IN_YEAR, DATE_STOCK_IN_DAY) VALUES ('{$p_code}', '{$p_name}', '{$p_desc}', '{$p_c_or_b}', '{$p_on_hand}', '{$p_on_hand}', '{$p_reg_price}', '{$p_price}', '{$p_old_total}', '{$p_old_price}', '{$p_cat_id}', '{$p_variant_id}', '{$p_supplier_id}', '{$vDate222}', 'NO', '{$tmonth}', '{$tyear}', '{$tday}') ");
                            if ($query2) {
                                mysqli_query($db, "UPDATE product SET ENDED = 'YES' WHERE DATE_STOCK_IN='$p_d_stock' ");
                                $sql2 = mysqli_query($db, "INSERT INTO inventory_update VALUES ('', '$p_code', '$vDate222', '0') ");
                                
                            }
                        }
                    }
                    }

?>

<script type="text/javascript">
    alert("Inventory report successfully created!");
    window.location = "product.php";
</script>