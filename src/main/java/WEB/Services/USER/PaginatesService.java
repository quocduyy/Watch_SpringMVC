package WEB.Services.USER;

import org.springframework.stereotype.Service;
import WEB.DTO.PaginatesDTO;

@Service
public class PaginatesService implements IPaginatesService {
	@Override
	public PaginatesDTO getInfoPaginate(int totalPage, int limitPage, int currentPage) {
		PaginatesDTO paginatesDTO = new PaginatesDTO();
		paginatesDTO.setLimitPage(limitPage);
		paginatesDTO.setTotalPage(setInfoTotalPage(totalPage, limitPage));
		paginatesDTO.setCurrentPage(checkCurrentPage(currentPage, paginatesDTO.getTotalPage()));
		paginatesDTO.setStartPage(findStartPage(paginatesDTO.getCurrentPage(), limitPage));
		paginatesDTO.setEndPage(findEndPage(paginatesDTO.getStartPage(), limitPage, totalPage));
		
		return paginatesDTO;
	}

	private int findEndPage(int startPage, int limitPage, int totalData) {
		return startPage + limitPage > totalData ? totalData : (startPage + limitPage) - 1;
	}

	private int findStartPage(int currentPage, int limitPage) {
		return ((currentPage - 1) * limitPage) + 1;
	}

	private int setInfoTotalPage(int totalData, int limitPage) {
		int totalPage = 0;
		totalPage = totalData / limitPage;
		totalPage = totalPage * limitPage < totalData ? totalPage + 1 : totalPage;
		return totalPage;
	}

	private int checkCurrentPage(int currentPage, int totalPage) {
		if (currentPage < 1) {
			return 1;
		}
		if (currentPage > totalPage) {
			return totalPage;
		}
		return currentPage;
	}
}
