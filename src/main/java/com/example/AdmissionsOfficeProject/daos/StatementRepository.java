package com.example.AdmissionsOfficeProject.daos;

import com.example.AdmissionsOfficeProject.domain.Statement;
import com.example.AdmissionsOfficeProject.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface StatementRepository extends JpaRepository<Statement, Integer> {

    Optional<Statement> findByUser(User user);

    List<Statement> findAllByUserId(int userId);

    List<Statement> findAllByFacultyId(int facultyId);

    @Query("SELECT (count(s) > 0) FROM Statement s " +
            "where s.faculty.id=:facultyId " +
            "AND s.user.id=:userId")
    boolean checkIfExist(@Param("facultyId") int facultyId,
                         @Param("userId") int userId);

    @Query("select s.id from Statement s where s.faculty.id = :facultyId")
    List<Integer> getAllIds(@Param("facultyId") int facultyId);

}
