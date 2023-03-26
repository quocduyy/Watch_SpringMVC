package WEB.Services.USER;

import org.springframework.stereotype.Service;

import WEB.DTO.PaginatesDTO;

@Service
public interface IPaginatesService {
	public PaginatesDTO getInfoPaginate(int totalPage, int limitPage, int currentPage);
}
