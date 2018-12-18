package com.gerenkaihu;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;

public class piliangutil {
	public List<GeRenKaiHu> loadGeRenKaiHu(String xlsPath) throws IOException {
		List temp = new ArrayList();
		FileInputStream fileIn = new FileInputStream(xlsPath);
		// 根据指定的文件输入流导入Excel从而产生Workbook对象
		Workbook wb0 = new HSSFWorkbook(fileIn);
		// 获取Excel文档中的第一个表单
		Sheet sht0 = wb0.getSheetAt(0);
		// 对Sheet中的每一行进行迭代
		for (Row r : sht0) {
			// 如果当前行的行号（从0开始）未达到2（第三行）则从新循环
			if (r.getRowNum() < 1) {
				continue;
			}
			// 创建实体类
			GeRenKaiHu info = new GeRenKaiHu();		
			r.getCell(0).setCellType(CellType.STRING);
			r.getCell(1).setCellType(CellType.STRING);
			r.getCell(2).setCellType(CellType.STRING);
			r.getCell(3).setCellType(CellType.STRING);
			info.setNAME(r.getCell(0).getStringCellValue());
			info.setKIND(r.getCell(1).getStringCellValue());
			info.setNUMBER(r.getCell(2).getStringCellValue());
			info.setBASENUMBER(Double.parseDouble(r.getCell(3)
					.getStringCellValue()));
			temp.add(info);
		}
		fileIn.close();
		return temp;
	}
}
