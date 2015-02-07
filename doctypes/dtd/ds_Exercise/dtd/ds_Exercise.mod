<?xml version="1.0" encoding="UTF-8"?>
<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    DITA For Publishers Slide                         -->
<!--  VERSION:   0.9.19                                            -->
<!--  DATE:      June 2013                                         -->
<!--                                                               -->
<!-- ============================================================= -->


<!-- ============================================================= -->
<!--                   SPECIALIZATION OF DECLARED ELEMENTS         -->
<!-- ============================================================= -->

<!-- ============ Specialization of declared elements ============ -->

<!ENTITY % ds_Exercise "ds_Exercise">
<!ENTITY % ds_ExerciseBody "ds_ExerciseBody">
<!ENTITY % ds_InstructorNotes "ds_InstructorNotes">
<!ENTITY % ds_StudentNotes "ds_StudentNotes">

<!-- declare the structure and content models -->

<!-- declare the class derivations -->

<!ENTITY % learningContent-info-types "no-topic-nesting">
<!ENTITY included-domains    "" >

<!ENTITY % ds_Exercise.content
                       "((%title;),
                         (%titlealts;)?,
                         (%shortdesc; | 
                          %abstract;)?,
                         (%prolog;)?,
                         (%ds_ExerciseBody;),
                         (%related-links;)?,
                         (%ds_Exercise-info-types;)* )"
>
<!ENTITY % ds_Exercise.attributes
             "id
                        ID 
                                  #REQUIRED
              %conref-atts;
              %select-atts;
              %localization-atts;
              outputclass
                        CDATA
                                  #IMPLIED"
>
<!ELEMENT ds_Exercise    %ds_Exercise.content;>
<!ATTLIST ds_Exercise
              %ds_Exercise.attributes;
              %arch-atts;
              domains 
                        CDATA
                                  "&included-domains;"
>


<!ENTITY % ds_ExerciseBody.content
                       "(((%lcIntro;) |
                          (%lcDuration;) |
                          (%lcObjectives;))*,
                         (%section;)*,
                         (%ds_StudentNotes;)?,
                         (%ds_InstructorNotes;)?,
                         (%section;)*)  "
>
<!ENTITY % ds_ExerciseBody.attributes
             "%univ-atts;
              outputclass
                        CDATA
                                  #IMPLIED"
>
<!ELEMENT ds_ExerciseBody    %ds_ExerciseBody.content;>
<!ATTLIST ds_ExerciseBody    %ds_ExerciseBody.attributes;>

<!--                    LONG NAME: student notes                         -->
<!ENTITY % ds_StudentNotes.content
                       "(%section.cnt;)*"
>
<!ENTITY % ds_StudentNotes.attributes
             "spectitle 
                        CDATA 
                                  'Student Notes'
              %univ-atts;
              outputclass 
                        CDATA 
                                  #IMPLIED"
>
<!ELEMENT ds_StudentNotes    %ds_StudentNotes.content;>
<!ATTLIST ds_StudentNotes    %ds_StudentNotes.attributes;>

<!--                    LONG NAME: instructor notes                         -->
<!ENTITY % ds_InstructorNotes.content
                       "(%section.cnt;)*"
>
<!ENTITY % ds_InstructorNotes.attributes
             "spectitle 
                        CDATA 
                                  'Instructor Notes'
              %univ-atts;
              outputclass 
                        CDATA 
                                  #IMPLIED"
>
<!ELEMENT ds_InstructorNotes    %ds_InstructorNotes.content;>
<!ATTLIST ds_InstructorNotes    %ds_InstructorNotes.attributes;>


<!--specialization attributes-->

<!ATTLIST ds_Exercise        %global-atts; class CDATA "- topic/topic learningBase/learningBase learningContent/learningContent ds_Exercise/ds_Exercise ">
<!ATTLIST ds_ExerciseBody    %global-atts; class CDATA "- topic/body  learningBase/learningBasebody learningContent/learningContentbody ds_Exercise/ds_ExerciseBody ">
<!ATTLIST ds_StudentNotes    %global-atts; class CDATA "- topic/body  learningBase/section learningContent/section ds_Exercise/ds_StudentNotes ">
<!ATTLIST ds_InstructorNotes    %global-atts; class CDATA "- topic/body  learningBase/section learningContent/section ds_Exercise/ds_InstructorNotes ">
