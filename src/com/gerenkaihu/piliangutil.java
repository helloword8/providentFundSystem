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
		// ����ָ�����ļ�����������Excel�Ӷ�����Workbook����
		Workbook wb0 = new HSSFWorkbook(fileIn);
		// ��ȡExcel�ĵ��еĵ�һ����
		Sheet sht0 = wb0.getSheetAt(0);
		// ��Sheet�е�ÿһ�н��е���
		for (Row r : sht0) {
			// �����ǰ�е��кţ���0��ʼ��δ�ﵽ2�������У������ѭ��
			if (r.getRowNum() < 1) {
				continue;
			}
			// ����ʵ����
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
