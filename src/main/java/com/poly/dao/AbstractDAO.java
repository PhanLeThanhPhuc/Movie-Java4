package com.poly.dao;

import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.persistence.StoredProcedureQuery;
import javax.persistence.TypedQuery;

import com.poly.util.JpaUtils;

public class AbstractDAO<T> {

	public static final EntityManager entityManager = JpaUtils.getEntityManager();
	
	@SuppressWarnings("deprecation")
	@Override
	protected void finalize() throws Throwable{
		entityManager.close();
		super.finalize();
	}
	
	public T findById(Class<T> clazz,Integer id) {
		return entityManager.find(clazz, id);
	}
	
	public List<T> findAll(Class<T> clazz,boolean existIsActive){
		String entityName = clazz.getSimpleName();
		StringBuilder sql = new StringBuilder();
		sql.append("SELECT u FROM ").append(entityName).append(" u");
		if(existIsActive == true) {
			sql.append(" WHERE isActive = 1");
		}
		TypedQuery<T> query = entityManager.createQuery(sql.toString(),clazz);
				return query.getResultList();
	}
	
	public List<T> findAll(Class<T> clazz,boolean existIsActive, int pageNumer, int pageSize){
		String entityName = clazz.getSimpleName();
		StringBuilder sql = new StringBuilder();
		sql.append("SELECT u FROM ").append(entityName).append(" u");
		if(existIsActive == true) {
			sql.append(" WHERE isActive = 1");
		}
		TypedQuery<T> query = entityManager.createQuery(sql.toString(),clazz);
		query.setFirstResult((pageNumer - 1) * pageSize);
		query.setMaxResults(pageSize);
		return query.getResultList();
	}
	
	public T findOne(Class<T> clazz,String sql, Object...params ){
		TypedQuery<T> query = entityManager.createQuery(sql,clazz);
		for(int i = 0; i< params.length;i++) {
			query.setParameter(i, params[i]);
		} 
		List<T> result = query.getResultList();
		if(result.isEmpty()) {
			return null;
		}
		return result.get(0);
	}
	
	public List<T> findMany(Class<T> clazz,String sql, Object...params ){
		TypedQuery<T> query = entityManager.createQuery(sql,clazz);
		for(int i = 0; i< params.length;i++) {
			query.setParameter(i, params[i]);
		} 
		return query.getResultList();
	}
	
	@SuppressWarnings("unchecked")
	public List<Object[]> findManyByNativeQuery(String sql, Object...params ){
		Query query = entityManager.createQuery(sql);
		for(int i = 0; i< params.length;i++) {
			query.setParameter(i, params[i]);
		} 
		return query.getResultList();
	}
	
	
	public T create(T entity) {
		try {
			entityManager.getTransaction().begin();
			entityManager.persist(entity);
			entityManager.getTransaction().commit();
			System.out.println("Create succeed");
			return entity;
		} catch (Exception e) {
			entityManager.getTransaction().rollback();
			System.out.println("cannot insert entity " + entity.getClass().getSimpleName()+" to Database");
			throw new RuntimeException(e);
		}
	}
	
	public T update(T entity) {
		try {
			entityManager.getTransaction().begin();
			entityManager.merge(entity);
			entityManager.getTransaction().commit();
			System.out.println("upadate succeed");
			return entity;
		} catch (Exception e) {
			entityManager.getTransaction().rollback();
			System.out.println("cannot upadate entity " + entity.getClass().getSimpleName()+" to Database");
			throw new RuntimeException(e);
		}
	}
	
	public T delete(T entity) {
		try {
			entityManager.getTransaction().begin();
			entityManager.remove(entity);
			entityManager.getTransaction().commit();
			System.out.println("delete succeed");
			return entity;
		} catch (Exception e) {
			entityManager.getTransaction().rollback();
			System.out.println("cannot delete entity " + entity.getClass().getSimpleName()+" to Database");
			throw new RuntimeException(e);
		}
	}
	
	@SuppressWarnings("unchecked")
	public List<T> callStore(String nameStore,Map<String, Object> params){
			StoredProcedureQuery query = entityManager.createNamedStoredProcedureQuery(nameStore);
			params.forEach((key,value) -> query.setParameter(key, value));
			return (List<T>) query.getResultList();
			
	}
}
