package com.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.DudaopingjiaEntity;
import com.entity.view.DudaopingjiaView;

import com.service.DudaopingjiaService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MPUtil;
import com.utils.CommonUtil;


/**
 * 督导评价
 * 后端接口
 * @author 
 * @email 
 * @date 2020-11-26 20:02:56
 */
@RestController
@RequestMapping("/dudaopingjia")
public class DudaopingjiaController {
    @Autowired
    private DudaopingjiaService dudaopingjiaService;
    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,DudaopingjiaEntity dudaopingjia, HttpServletRequest request){

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("jiaoshi")) {
			dudaopingjia.setJiaoshigonghao((String)request.getSession().getAttribute("username"));
		}
		if(tableName.equals("dudao")) {
			dudaopingjia.setDudaogonghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<DudaopingjiaEntity> ew = new EntityWrapper<DudaopingjiaEntity>();
		PageUtils page = dudaopingjiaService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, dudaopingjia), params), params));
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,DudaopingjiaEntity dudaopingjia, HttpServletRequest request){
        EntityWrapper<DudaopingjiaEntity> ew = new EntityWrapper<DudaopingjiaEntity>();
		PageUtils page = dudaopingjiaService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, dudaopingjia), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( DudaopingjiaEntity dudaopingjia){
       	EntityWrapper<DudaopingjiaEntity> ew = new EntityWrapper<DudaopingjiaEntity>();
      	ew.allEq(MPUtil.allEQMapPre( dudaopingjia, "dudaopingjia")); 
        return R.ok().put("data", dudaopingjiaService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(DudaopingjiaEntity dudaopingjia){
        EntityWrapper< DudaopingjiaEntity> ew = new EntityWrapper< DudaopingjiaEntity>();
 		ew.allEq(MPUtil.allEQMapPre( dudaopingjia, "dudaopingjia")); 
		DudaopingjiaView dudaopingjiaView =  dudaopingjiaService.selectView(ew);
		return R.ok("查询督导评价成功").put("data", dudaopingjiaView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") String id){
        DudaopingjiaEntity dudaopingjia = dudaopingjiaService.selectById(id);
        return R.ok().put("data", dudaopingjia);
    }

    /**
     * 前端详情
     */
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") String id){
        DudaopingjiaEntity dudaopingjia = dudaopingjiaService.selectById(id);
        return R.ok().put("data", dudaopingjia);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody DudaopingjiaEntity dudaopingjia, HttpServletRequest request){
    	dudaopingjia.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(dudaopingjia);

        dudaopingjiaService.insert(dudaopingjia);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody DudaopingjiaEntity dudaopingjia, HttpServletRequest request){
    	dudaopingjia.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(dudaopingjia);

        dudaopingjiaService.insert(dudaopingjia);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody DudaopingjiaEntity dudaopingjia, HttpServletRequest request){
        //ValidatorUtils.validateEntity(dudaopingjia);
        dudaopingjiaService.updateById(dudaopingjia);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        dudaopingjiaService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<DudaopingjiaEntity> wrapper = new EntityWrapper<DudaopingjiaEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("jiaoshi")) {
			wrapper.eq("jiaoshigonghao", (String)request.getSession().getAttribute("username"));
		}
		if(tableName.equals("dudao")) {
			wrapper.eq("dudaogonghao", (String)request.getSession().getAttribute("username"));
		}

		int count = dudaopingjiaService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	


}
