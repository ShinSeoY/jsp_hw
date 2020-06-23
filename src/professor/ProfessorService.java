package professor;



public class ProfessorService{

    static final String 학번_필수 = "학번을 입력하세요";
    static final String 이름_필수 = "이름을 입력하세요";
    static final String 학번_중복 = "학번이 중복됩니다";


    public static String validate(Professor professor) throws Exception {
        if (professor.getId() == 0)
            return 학번_필수;
        if (StringUtil.isEmptyOrBlank(professor.getProfessorName()))
            return 이름_필수;
        Professor student1 = ProfessorDAO.findByProfessorName(professor.getProfessorName());
        if (student1 != null && student1.getId() != professor.getId())
            return 학번_중복;
        return null;
    }

    public static String insert(Professor professor) throws Exception {
        String errorMessage = validate(professor);
        if (errorMessage != null) return errorMessage;
        ProfessorDAO.insert(professor);
        return null;
    }

    public static String update(Professor professor) throws Exception {
        String errorMessage = validate(professor);
        if (errorMessage != null) return errorMessage;
        ProfessorDAO.update(professor);
        return null;
    }
}


