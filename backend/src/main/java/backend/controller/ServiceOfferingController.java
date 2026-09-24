package backend.controller;

import backend.model.ServiceOffering;
import backend.repository.ServiceOfferingRepository;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/pros/{proId}/services")
public class ServiceOfferingController {

    private final ServiceOfferingRepository serviceOfferingRepository;

    public ServiceOfferingController(ServiceOfferingRepository serviceOfferingRepository) {
        this.serviceOfferingRepository = serviceOfferingRepository;
    }

    @GetMapping
    public List<ServiceOffering> listerLesServicesDuPro(@PathVariable Long proId) {
        return serviceOfferingRepository.findByProId(proId);
    }
}