<?php
$title = "Booked Food";
include_once '../includes/session.php';
include_once '../includes/studentheader.php';

if (!$_SESSION['id']) {
    echo "<h1 class='text-danger'>Please check details and try again</h1>";
} else {
    // Get the ID of the current logged-in student
    $id = $_SESSION['id'];

    // Fetch the details of the meals that the student has booked
    $result = $reports->getStudentfoodDetails($id);

    // Check if the query returned any results
    if ($result) {
?>
<head>
            <link rel="stylesheet" href="../css/view.css">
        </head>
    <section class="main">
        <h1>My Booked Meals</h1>
        <table class="table">
            <thead>
                <tr>
                    <th>Food ID</th>
                    <th>Food Type</th>
                    <th>Food</th>
                    <th>Day</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($result as $row) { ?>
                    <tr>
                        <td><?php echo $row['food_id']; ?></td>
                        <td><?php echo $row['diet_type']; ?></td>
                        <td><?php echo $row['food']; ?></td>
                        <td><?php echo $row['Day']; ?></td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>
    </section>
<?php
    } else {
        echo "No Food details found for this student.";
    }
}
?>
