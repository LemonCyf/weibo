package com.fifteen.service;

import com.fifteen.pojo.Expressions;
import org.springframework.stereotype.Service;

import java.util.List;

public interface ExpressionsService {
    List<Expressions> findAllExpress();


}
