package com.bookland.dto;

import java.util.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
public class muonOnlineDTO {
		private String maHV;
	    private Date ngayHenLay;
	    private List<Integer> idBanSaoSach;
}
