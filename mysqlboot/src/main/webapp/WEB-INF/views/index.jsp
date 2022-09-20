<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>index.jsp</h1>
	<h2>- Spring Boot jsp view 설정 - </h2>
	<p>
		src/main/webapp/WEB-INF/views 폴더 생성 <br/>
		<br/>
		(application.properties)<br/> 
		#JSP view <br/>
		spring.mvc.view.prefix=/WEB-INF/views/ <br/>
		spring.mvc.view.suffix=.jsp <br/>
		<br/>
		build.gradle <br/>
		implementation 'javax.servlet:jstl' <br/>
		implementation 'org.apache.tomcat.embed:tomcat-embed-jasper' <br/>
	</p>
	<hr>
	<h2>MyBatis & MySql 연동</h2>
	<p>
		(application.properties) <br/>
		#MySql <br/>
		spring.datasource.driver-class-name=com.mysql.cg.jdbc.Driver <br/>
		spring.datasource.url=jdbc:mysql://localhost:3306/table?&useUnicode=true&amp&charsetEncoding=utf8&amp&useSSL=false&amp&serverTimeznoe=UTC <br/>
		spring.datasource.username=root <br/>
		spring.datasource.password=1234 <br/>
		<br/>
		#MyBatis <br/>
		mybaits-config=mybatis-config.xml <br/>
		mybatis.mapper-locations:mapper/*.xml <br/>
		<br/>
		<br/>
		build.gradle <br/>
		implementation 'org.springframework.boot:spring-boot-starter-jdbc' <br/>
		implementation 'org.mybatis.spring.boot:mybatis-spring-boot-starter:2.2.2' <br/>
		runtimeOnly 'mysql:mysql-connector-java' <br/>
	</p>
	<hr>
	<h2>src/main/resources/mybatis-config.xml</h2>
	<p> 
		&lt;?xml version="1.0" encoding="UTF-8" ?&gt;<br/>
		&lt;!DOCTYPE configuration PUBLIC "-//mybatis.org//DTD Config 3.0//EN" "http://mybatis.org/dtd/mybatis-3-config.dtd"&gt; <br/>
	    &lt;configuration&gt; <br/>
		<br/>
	    	&lt;settings&gt; <br/> 
				&lt;!-- query 결과 컬럼의 값이 null일 경우 result에 null로 setting할지 여무 --&gt; <br/> 
				&lt;setting name="callSettersOnNulls" value="true" /&gt; <br/>
				&lt;!-- null parameter 허용 --&gt; <br/>
				&lt;setting name="jdbcTypeForNull" value="NULL" /&gt; <br/>
			&lt;/settings&gt; <br/>
			<br/>
			&lt;!-- vo type aliases --&gt; <br/>
			&lt;typeAliases&gt; <br/>
				&lt;typeAlias type="com.example.mysqlboot.vo.Car" alias="car"/&gt; <br/> 
			&lt;/typeAliases&gt; <br/>
		<br>
	    &lt;/configuration&gt; <br/>
	</p>
	<hr>
	<h2>src/main/resources/mapper/mapper.xml</h2>
	<p> 
		&lt;?xml version="1.0" encoding="UTF-8"?&gt;<br/>
		&lt;!DOCTYPE mapper PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN" "http://mybatis.org/dtd/mybatis-3-mapper.dtd"&gt;<br/>
		&lt;mapper namespace="com.example.mysqlboot.CarMapper"&gt;<br/>
		<br/>
		    &lt;select id="carList" resultMap="CarMap"&gt;<br/>
		        select * from car <br/>
			&lt;/select&gt;<br/>
			<br/>
			&lt;resultMap type="com.example.mysqlboot.vo.Car" id="CarMap"&gt;<br/>
				&lt;result column="CAR_NUM" property="carNum"/&gt;<br/>
				&lt;result column="IN_DATE" property="inDate"/&gt;<br/>
				&lt;result column="STATE" property="state"/&gt;<br/>
				&lt;result column="NAME" property="name"/&gt;<br/>
			&lt;/resultMap&gt;<br/>
		&lt;/mapper&gt;<br/>
	</p>
	
</body>
</html>