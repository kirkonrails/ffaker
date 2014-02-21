# encoding: utf-8

module Faker
  module Education
    extend ModuleUtils
    extend self

    def degree_short
      "#{DEGREE_SHORT_PREFIX.rand} in #{major}"
    end

    def degree
      "#{DEGREE_PREFIX.rand} in #{major}"
    end

    def major
      "#{MAJOR_ADJ.rand} #{MAJOR_NOUN.rand}"
    end

    def school_name
      SCHOOL_PREFIX.rand + SCHOOL_SUFFIX.rand
    end

    def school_generic_name
      case rand(2)
      when 0 then AddressUS::STATE.rand
      when 1 then school_name
      end
    end

    def school
      case rand(5)
      when (0..1)  then "#{school_name} #{SCHOOL_TYPE.rand}"
      when 2 then "#{school_generic_name} #{SCHOOL_ADJ.rand} #{SCHOOL_TYPE.rand}"
      when 3 then "#{SCHOOL_UNI.rand} of #{school_generic_name}"
      when 4 then "#{school_generic_name} #{SCHOOL_TYPE.rand} of #{MAJOR_NOUN.rand}"
      end
    end

    def course
      COURSE.rand 
    end

    DEGREE_SHORT_PREFIX = k %w(AB BS BSc MA MD DMus DPhil)
    DEGREE_PREFIX = k ['Bachelor of Science', 'Bachelor of Arts', 'Master of Arts', 'Doctor of Medicine', 'Bachelor of Music', 'Doctor of Philosophy']
    MAJOR_ADJ = k(%w(Business Systems Industrial Medical Financial Marketing Political Social) + ['Human Resource'])
    SCHOOL_PREFIX = k %w(Green South North Wind Lake Hill Lark River Red White)
    SCHOOL_ADJ = k %w(International Global Polytechnic National)
    SCHOOL_TYPE = k %w(School University College Institution Academy)
    SCHOOL_UNI  = k %w(University College)
    COURSE = k ["Introduction to Organizational Behaviour",
        "Web and Internet Fundamentals",
        "Rapid Application Development",
        "Introduction to Web Programming",
        "Introduction to Object Oriented Programming",
        "The Mainframe Environment",
        "Advanced Object Oriented Programming",
        "Programming Fundamentals",
        "Networking Essentials",
        "Computer Organization and Architecture",
        "Relational Database",
        "Systems Analysis",
        "Enterprise Computing",
        "Advanced Web Programming",
        "Business Intelligence Tools",
        "Systems Project 1",
        "Advanced Database",
        "Issues in Information Technology",
        "Systems Project 2",
        "Game and Simulation Programming",
        "Business Intelligence and Analysis",
        "Mobile and Pervasive Computing",
        "Application Security Programming",
        "User Experience and Interaction Design",
        "Math for the Computer Industry",
        "Principles of Management",
        "Project Management for Information Technology",
        "Computer Business Documentation",
        "Advanced Computer Business Documentation",
        "Introduction to Keyboarding",
        "Integrated Office Simulations",
        "Computerized Administrative Simulations",
        "Social Media and Web Management",
        "Mathematics for the Office Professional",
        "Office Procedures and Strategies",
        "Multi-Media Language Processing",
        "Spreadsheet and Presentation Applications",
        "Word Processing and Database Applications",
        "Bookkeeping for the Office Professional",
        "Administrative Support and Records Management",
        "Project Management for the Office Professional",
        "Executive Office Procedures",
        "Executive Office Management",
        "Financial Management for the Executive Assistant",
        "Financial Accounting Principles 1",
        "Concepts of the Automotive Industry",
        "Introduction to Automotive Technology",
        "Introduction to Fixed Operations",
        "DMS: Parts and Service",
        "Automotive Networks",
        "Introduction to Canadian Automotive Aftermarket",
        "Dealership Sales Operations",
        "Introduction to Organizational Behaviour",
        "Auto Show Planning",
        "Microcomputer Applications",
        "Microeconomics",
        "Macroeconomics",
        "Dealership Financial Statements",
        "Automotive Law and Ethics",
        "Mathematics of Finance",
        "Introduction to Marketing",
        "Sales and Customer Relationship Management",
        "Medical Skin Care Science",
        "Medical Skin Care Techniques",
        "Medical Skin Care Applications",
        "Oncology Esthetics",
        "Medical Intervention and Plastic Surgery Procedures",
        "Advanced Medical Skin Care Techniques",
        "Advanced Medical Skin Care Applications",
        "The Medical Esthetic Practice and the Cosmetic Patient",
        "Placements",
        "Medical Skin Care Clinic",
        "Advanced Medical Esthetics Clinic",
        "Introduction to Technical Drafting",
        "CAD Electrical Circuits",
        "AC Circuit Fundamentals",
        "Electrical System and Control 1",
        "Electrical Machines",
        "Power Transmission and Distribution",
        "CAD Electrical Layouts",
        "Programmable Logic Controller 1",
        "Progressive Electrical Maintenance",
        "Power Transmission and Distribution 2",
        "Hydro Codes and Standards",
        "Electronic Devices",
        "DC Circuit Fundamentals",
        "Environmental Health and Safety",
        "Geographic Information Systems",
        "Mathematics for Technology",
        "Project Management",
        "Physical Sciences",
        "Introduction to Robotics",
        "Child Development",
        "The Art of Counselling Children and Youth",
        "Counselling Children and Youth: Theories and Interventions",
        "Adolescent Development and Intervention Strategies",
        "Introduction to Child and Youth Worker",
        "Interactive Lab 1",
        "Therapeutic Programming and Activities",
        "Group Counselling",
        "Ethics and Professionalism in CYW",
        "Social Welfare, Community and Social Services",
        "Case Management",
        "Diversity and Multiculturalism",
        "Family Systems and Interventions",
        "Sex, Drugs, and Youth Culture",
        "Mental Health Issues and Intervention",
        "Field Placement Seminar 1",
        "Interactive Lab 2",
        "Field Placement Seminar 2",
        "Community Development",
        "Interactive Lab 3",
        "Mental Health and Medications in CYW",
        "Trauma and Abuse",
        "Holistic Health and Wellness",
        "Interactive Lab 4 (Trauma and Abuse)",
        "Interactive Lab 5 (Holistic CYW)",
        "Field Placement Seminar 3",
        "Field Placement Seminar 4",
        "Accounting Fundamentals",
        "Introduction to Marketing",
        "Research in the Information Society",
        "Canadian Tourism Destinations",
        "Professional Customer Service",
        "Dynamics of Hospitality and Tourism",
        "Eco-Adventure Travel",
        "World Tourism Destinations",
        "Tourism Promotion",
        "Tourism Data Collection and Analysis",
        "Festival and Event Planning",
        "Guiding and Interpretation",
        "Managing Attractions",
        "Managing Destinations",
        "Sustainable Tourism",
        "Global Travel Patterns and Trends",
        "Tour Packaging and Sales"]

  end
end
