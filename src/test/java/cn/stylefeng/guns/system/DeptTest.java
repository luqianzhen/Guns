package cn.stylefeng.guns.system;

import cn.stylefeng.guns.base.BaseJunit;
import cn.stylefeng.guns.modular.system.dao.DeptMapper;
import cn.stylefeng.guns.modular.system.model.Dept;
import org.junit.Test;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

/**
 * 字典服务测试
 *
 * @author fengshuonan
 * @date 2017-04-27 17:05
 */
public class DeptTest extends BaseJunit {

    @Resource
    DeptMapper deptMapper;


    @Test
    public void updateTest() {
       /* Dept dept = this.deptMapper.selectById(24);
        dept.setTips("哈哈");
        boolean flag = dept.updateById();
        assertTrue(flag);*/
        System.out.println("121212");
    }


    @Test
    public void listTest() {
        /*List<Map<String, Object>> list = this.deptMapper.list("总公司");
        assertTrue(list.size() > 0);*/
        System.out.println("121212");
    }
}
