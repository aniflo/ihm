<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<div class="span3">
			<div id="menu">
			    <ul>
			        <li><a href="home"><spring:message code="menu.home" /> </a></li>
			        <li><a href="#"><spring:message code="menu.contacts" /> </a>
			            <ul>
			                <li><a href="contact"><spring:message code="menu.create" /></a></li>
			                <li><a href="liste-contacts"><spring:message code="menu.search" /></a></li>
			            </ul>
			        </li>
			        <li><a href="#"><spring:message code="menu.address" /> </a>
			            <ul>
			                <li><a href="adresse"><spring:message code="menu.create" /></a></li>
			            </ul>
			        </li>
			    </ul>
			</div>
</div>