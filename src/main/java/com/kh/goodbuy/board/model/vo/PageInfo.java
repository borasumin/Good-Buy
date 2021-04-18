package com.kh.goodbuy.board.model.vo;

import java.sql.Date;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString

public class PageInfo {
   private int currentPage; 
   private int listCount;
   private int pageLimit;
   private int maxpage;
   private int startPage;
   private int endPage;
   private int boardLimit;
}
