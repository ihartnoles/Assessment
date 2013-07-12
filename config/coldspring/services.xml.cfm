<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE beans PUBLIC "-//SPRING//DTD BEAN//EN"  "http://www.springframework.org/dtd/spring-beans.dtd">
<beans default-autowire="byName">
	
	<!--
	<import resource="/intfroot/config/coldspring/aicServices.xml.cfm" />
 	<import resource="/intfroot/config/coldspring/surveyServices.xml.cfm" />
	<import resource="/intfroot/config/coldspring/showcaseServices.xml.cfm" />
	<import resource="/intfroot/config/coldspring/receiverServices.xml.cfm" />
	<import resource="/intfroot/config/coldspring/apiServices.xml.cfm" />
	<import resource="/intfroot/config/coldspring/customFormServices.xml.cfm" />
	<import resource="/intfroot/config/coldspring/superServices.xml.cfm" />
	<import resource="/intfroot/portfolio/config/services.xml.cfm" />
	-->

	<!-- helpers -->
	<bean id="stringHelper" class="Assessment.utility.model.dataHelpers.stringHelper" />

    <!-- users -->
	<bean id="usersDAO" class="Assessment.model.users.usersDAO">
		<constructor-arg name="dsn"><value>${dsn}</value></constructor-arg>
	</bean>
	<bean id="usersGateway" class="Assessment.model.users.usersGateway">
		<constructor-arg name="dsn"><value>${dsn}</value></constructor-arg>
	</bean>
	<bean id="usersService" class="Assessment.model.users.usersService">
		<constructor-arg name="usersDAO">
			<ref bean="usersDAO"/>
		</constructor-arg>
		<constructor-arg name="usersGateway">
			<ref bean="usersGateway"/>
		</constructor-arg>
	</bean>

	<!-- user roles -->
	<bean id="userrolesDAO" class="Assessment.model.userroles.userrolesDAO">
		<constructor-arg name="dsn"><value>${dsn}</value></constructor-arg>
	</bean>
	<bean id="userrolesGateway" class="Assessment.model.userroles.userrolesGateway">
		<constructor-arg name="dsn"><value>${dsn}</value></constructor-arg>
	</bean>
	<bean id="userrolesService" class="Assessment.model.userroles.userrolesService">
		<constructor-arg name="userrolesDAO">
			<ref bean="userrolesDAO"/>
		</constructor-arg>
		<constructor-arg name="userrolesGateway">
			<ref bean="userrolesGateway"/>
		</constructor-arg>
	</bean>

	<!-- user role access -->
	<bean id="userRoleAccessDAO" class="Assessment.model.userRoleAccess.userRoleAccessDAO">
		<constructor-arg name="dsn"><value>${dsn}</value></constructor-arg>
	</bean>
	<bean id="userRoleAccessGateway" class="Assessment.model.userRoleAccess.userRoleAccessGateway">
		<constructor-arg name="dsn"><value>${dsn}</value></constructor-arg>
	</bean>
	<bean id="userRoleAccessService" class="Assessment.model.userRoleAccess.userRoleAccessService">
		<constructor-arg name="userRoleAccessDAO">
			<ref bean="userRoleAccessDAO"/>
		</constructor-arg>
		<constructor-arg name="userRoleAccessGateway">
			<ref bean="userRoleAccessGateway"/>
		</constructor-arg>
	</bean>
	
	<!-- reporting units -->
	<bean id="reportingunitsDAO" class="Assessment.model.reportingunits.reportingunitsDAO">
		<constructor-arg name="dsn"><value>${dsn}</value></constructor-arg>
	</bean>
	<bean id="reportingunitsGateway" class="Assessment.model.reportingunits.reportingunitsGateway">
		<constructor-arg name="dsn"><value>${dsn}</value></constructor-arg>
	</bean>
	<bean id="reportingunitsService" class="Assessment.model.reportingunits.reportingunitsService">
		<constructor-arg name="reportingunitsDAO">
			<ref bean="reportingunitsDAO"/>
		</constructor-arg>
		<constructor-arg name="reportingunitsGateway">
			<ref bean="reportingunitsGateway"/>
		</constructor-arg>
	</bean>

	<!-- assessment plans -->
	<bean id="assessmentplansDAO" class="Assessment.model.assessmentplans.assessmentplansDAO">
		<constructor-arg name="dsn"><value>${dsn}</value></constructor-arg>
	</bean>
	<bean id="assessmentplansGateway" class="Assessment.model.assessmentplans.assessmentplansGateway">
		<constructor-arg name="dsn"><value>${dsn}</value></constructor-arg>
	</bean>
	<bean id="assessmentplansService" class="Assessment.model.assessmentplans.assessmentplansService">
		<constructor-arg name="assessmentplansDAO">
			<ref bean="assessmentplansDAO"/>
		</constructor-arg>
		<constructor-arg name="assessmentplansGateway">
			<ref bean="assessmentplansGateway"/>
		</constructor-arg>
	</bean>
	
	<!-- assessment plan outcomes -->
	<bean id="assessmentPlanOutcomesDAO" class="Assessment.model.assessmentPlanOutcomes.assessmentPlanOutcomesDAO">
		<constructor-arg name="dsn"><value>${dsn}</value></constructor-arg>
	</bean>
	<bean id="assessmentPlanOutcomesGateway" class="Assessment.model.assessmentPlanOutcomes.assessmentPlanOutcomesGateway">
		<constructor-arg name="dsn"><value>${dsn}</value></constructor-arg>
	</bean>
	<bean id="assessmentPlanOutcomesService" class="Assessment.model.assessmentPlanOutcomes.assessmentPlanOutcomesService">
		<constructor-arg name="assessmentPlanOutcomesDAO">
			<ref bean="assessmentPlanOutcomesDAO"/>
		</constructor-arg>
		<constructor-arg name="assessmentPlanOutcomesGateway">
			<ref bean="assessmentPlanOutcomesGateway"/>
		</constructor-arg>
	</bean>


	<!-- ALC Categories -->
	<bean id="ALCCategoriesDAO" class="Assessment.model.ALCCategories.ALCCategoriesDAO">
		<constructor-arg name="dsn"><value>${dsn}</value></constructor-arg>
	</bean>
	<bean id="ALCCategoriesGateway" class="Assessment.model.ALCCategories.ALCCategoriesGateway">
		<constructor-arg name="dsn"><value>${dsn}</value></constructor-arg>
	</bean>
	<bean id="ALCCategoriesService" class="Assessment.model.ALCCategories.ALCCategoriesService">
		<constructor-arg name="ALCCategoriesDAO">
			<ref bean="ALCCategoriesDAO"/>
		</constructor-arg>
		<constructor-arg name="ALCCategoriesGateway">
			<ref bean="ALCCategoriesGateway"/>
		</constructor-arg>
	</bean>
</beans>