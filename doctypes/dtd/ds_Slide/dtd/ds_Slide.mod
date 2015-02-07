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

<!ENTITY % ds_Slide "ds_Slide">
<!ENTITY % ds_SlideBody "ds_SlideBody">
<!ENTITY % ds_InstructorNotes "ds_InstructorNotes">
<!ENTITY % ds_StudentNotes "ds_StudentNotes">

<!-- declare the structure and content models -->

<!-- declare the class derivations -->

<!ENTITY % learningContent-info-types "no-topic-nesting">
<!ENTITY included-domains    "" >

<!ENTITY % ds_Slide.content
                       "((%title;),
                         (%titlealts;)?,
                         (%shortdesc; | 
                          %abstract;)?,
                         (%prolog;)?,
                         (%ds_SlideBody;)?,
                         (%related-links;)?,
                         (%ds_Slide-info-types;)* )"
>
<!ENTITY % ds_Slide.attributes
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
<!ELEMENT ds_Slide    %ds_Slide.content;>
<!ATTLIST ds_Slide
              %ds_Slide.attributes;
              %arch-atts;
              domains 
                        CDATA
                                  "&included-domains;"
>


<!ENTITY % ds_SlideBody.content
                       "(((%lcIntro;) |
                          (%lcDuration;) |
                          (%lcObjectives;))*,
                         (%lcChallenge;)?,
                         (%lcInstruction;)?,
                         (%ds_StudentNotes;)?,
                         (%ds_InstructorNotes;)?,
                         (%section;)*)  "
>
<!ENTITY % ds_SlideBody.attributes
             "%univ-atts;
              outputclass
                        CDATA
                                  #IMPLIED"
>
<!ELEMENT ds_SlideBody    %ds_SlideBody.content;>
<!ATTLIST ds_SlideBody    %ds_SlideBody.attributes;>

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

<!ATTLIST ds_Slide        %global-atts; class CDATA "- topic/topic learningBase/learningBase learningContent/learningContent ds_Slide/ds_Slide ">
<!ATTLIST ds_SlideBody    %global-atts; class CDATA "- topic/body  learningBase/learningBasebody learningContent/learningContentbody ds_Slide/ds_SlideBody ">
<!ATTLIST ds_StudentNotes    %global-atts; class CDATA "- topic/body  learningBase/section learningContent/section ds_Slide/ds_StudentNotes ">
<!ATTLIST ds_InstructorNotes    %global-atts; class CDATA "- topic/body  learningBase/section learningContent/section ds_Slide/ds_InstructorNotes ">
