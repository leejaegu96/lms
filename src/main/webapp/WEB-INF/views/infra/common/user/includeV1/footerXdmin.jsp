<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>

<footer class="footer mt-auto">
	<div class="copyright bg-white">
		<p>
			&copy;
			<span id="copy-year"></span>
			Copyright Mono Dashboard Bootstrap Template by
			<a class="text-primary" href="http://www.iamabdus.com/" target="_blank">Abdus</a>
			.
		</p>
	</div>
	<script>
        var d = new Date();
        var year = d.getFullYear();
        document.getElementById("copy-year").innerHTML = year;
    </script>
</footer>

</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/20c294a34b.js" crossorigin="anonymous"></script>

<script src="../resources/assets/plugins/jquery/jquery.min.js"></script>
<script src="../resources/assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="../resources/assets/plugins/simplebar/simplebar.min.js"></script>
<script src="https://unpkg.com/hotkeys-js/dist/hotkeys.min.js"></script>

<script src="../resources/assets/plugins/prism/prism.js"></script>

<script src="../resources/assets/plugins/DataTables/DataTables-1.10.18/js/jquery.dataTables.min.js"></script>

<script src="../resources/assets/plugins/apexcharts/apexcharts.js"></script>

<script src="../resources/assets/js/mono.js"></script>
<script src="../resources/assets/js/chart.js"></script>
<script src="../resources/assets/js/map.js"></script>
<script src="../resources/assets/js/custom.js"></script>

<!--  -->

