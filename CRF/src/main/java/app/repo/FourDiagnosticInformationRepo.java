package app.repo;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import app.entities.FourDiagnosticInformationDO;

@Repository
public interface FourDiagnosticInformationRepo
        extends CrudRepository<FourDiagnosticInformationDO, Integer> {

    @Query(value = "select * from four_diagnostic_information where patient_id=?1",
            nativeQuery = true)
    public FourDiagnosticInformationDO findFourDiagnosticInfoByPatientId(int patientId);

}
