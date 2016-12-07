package com.etc.leaf.services;

import com.etc.leaf.dao.SearchDao;
import com.etc.leaf.dto.Image_info;

import java.util.List;

/**
 * Created by LiKe on 03/12/2016.
 */
public class Searchservice {

    public List<Image_info> getImagese(String value){
        SearchDao sd = new SearchDao();
        List<Image_info> images = sd.getsearchedimg(value);
        return images;
    }

}
