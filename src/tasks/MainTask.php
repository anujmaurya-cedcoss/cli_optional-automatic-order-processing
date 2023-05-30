<?php

declare(strict_types=1);

namespace MyApp\Tasks;

use Phalcon\Cli\Task;

class MainTask extends Task
{
    public function mainAction()
    {
        // main action
    }

    public function placeOrderAction($uname, $product_id, $quantity)
    {
        // place new order here
        $sql = "INSERT INTO `orders`(`name`, `product_id`, `quantity`) VALUES ('$uname','$product_id','$quantity')";
        $result = $this->db->execute($sql);
        if ($result) {
            echo "Order Placed";
        } else {
            echo "There was some error";
        }
    }

    public function processOrderAction()
    {
        $sql = "SELECT * FROM `orders` WHERE `status` = 'placed'";
        $orders = $this->db->fetchAll(
            $sql,
            \Phalcon\Db\Enum::FETCH_ASSOC
        );
        foreach ($orders as $value) {
            $id = $value['id'];
            if ($value['name'] != '' && $value['product_id'] != '' && $value['quantity'] != '') {
                // approved
                $sql = "UPDATE `orders` SET `status`= 'accepted' WHERE `id` = $id";
                $this->db->execute($sql);
            } else {
                // rejected
                $sql = "UPDATE `orders` SET `status`= 'rejected' WHERE `id` = $id";
                $this->db->execute($sql);
            }
        }
    }
}
