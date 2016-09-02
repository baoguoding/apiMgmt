package com.rs.conf;

import java.util.Properties;

import javax.sql.DataSource;

import org.apache.ibatis.plugin.Interceptor;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.mapper.MapperScannerConfigurer;
import org.springframework.beans.factory.config.ConfigurableBeanFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Scope;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.core.io.support.ResourcePatternResolver;

import com.baomidou.mybatisplus.spring.MybatisSqlSessionFactoryBean;
import com.github.pagehelper.PageHelper;

@Configuration
public class DBConfig {

	@Bean
	@Scope(ConfigurableBeanFactory.SCOPE_SINGLETON)
	public SqlSessionFactory getMybatisSqlSessionFactoryBean(DataSource datasource) throws Exception {
		MybatisSqlSessionFactoryBean factoryBean = new MybatisSqlSessionFactoryBean();
		factoryBean.setDataSource(datasource);
		ResourcePatternResolver resolver = (ResourcePatternResolver) new PathMatchingResourcePatternResolver();
		factoryBean.setTypeAliasesPackage("com.rs.persistent");
		Resource[] resources = resolver.getResources("classpath:/com/rs/persistent/mapper/*.xml");
		factoryBean.setMapperLocations(resources);
		factoryBean.setCache(null);
		PageHelper pageHelper = new com.github.pagehelper.PageHelper();
		Properties p = new Properties();
		p.setProperty("dialect", "mysql");
		pageHelper.setProperties(p);
		factoryBean.setPlugins(new Interceptor[]{pageHelper});
		return factoryBean.getObject();
	}

	@Bean
	public MapperScannerConfigurer getMapperScannerConfigurer() {
		MapperScannerConfigurer scanConf = new MapperScannerConfigurer();
		scanConf.setBasePackage("com.rs.persistent.mapper");
		return scanConf;
	}

}
