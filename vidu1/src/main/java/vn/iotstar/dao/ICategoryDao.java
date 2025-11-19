package vn.iotstar.dao;

import java.util.List;
import vn.iotstar.models.CategoryModel;

public interface ICategoryDao {
    List<CategoryModel> findAll();
    CategoryModel findById(int id);
    boolean insert(CategoryModel cate);
    boolean update(CategoryModel cate);
    boolean delete(int id);
}
