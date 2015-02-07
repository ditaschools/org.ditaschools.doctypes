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

<!ENTITY % ds_QuestionTopic "ds_QuestionTopic">
<!ENTITY % ds_QuestionTopicBody "ds_QuestionTopicBody">
<!ENTITY % ds_QuestionTopicTitle "ds_QuestionTopicTitle">


<!ENTITY % learningContent-info-types "no-topic-nesting">
<!ENTITY included-domains    "" >

<!ENTITY % ds_QuestionTopic.content
                       "((%ds_QuestionTopicTitle;),
                         (%titlealts;)?,
                         (%prolog;)?,
                         (%ds_QuestionTopicBody;),
                         (%related-links;)?,
                         (%ds_QuestionTopic-info-types;)* )"
>
<!ENTITY % ds_QuestionTopic.attributes
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
<!ELEMENT ds_QuestionTopic    %ds_QuestionTopic.content;>
<!ATTLIST ds_QuestionTopic
              %ds_QuestionTopic.attributes;
              %arch-atts;
              domains 
                        CDATA
                                  "&included-domains;"
>


<!ENTITY % ds_QuestionTopicBody.content
                       "(%lcInteractionBase; | 
                         %lcInteractionBase2;)+
                       "
>
<!ENTITY % ds_QuestionTopicBody.attributes
             "%univ-atts;
              outputclass
                        CDATA
                                  #IMPLIED"
>
<!ELEMENT ds_QuestionTopicBody    %ds_QuestionTopicBody.content;>
<!ATTLIST ds_QuestionTopicBody    %ds_QuestionTopicBody.attributes;>

<!--                    LONG NAME: Question Topic Title                         -->
<!ENTITY % ds_QuestionTopicTitle.content
                       "(%title.cnt;)*"
>
<!ENTITY % ds_QuestionTopicTitle.attributes
             "%univ-atts;
              outputclass 
                        CDATA 
                                  #IMPLIED"
>
<!ELEMENT ds_QuestionTopicTitle    %ds_QuestionTopicTitle.content;>
<!ATTLIST ds_QuestionTopicTitle    %ds_QuestionTopicTitle.attributes;>

<!--specialization attributes-->

<!ATTLIST ds_QuestionTopic              %global-atts; class CDATA "- topic/topic ds_QuestionTopic/ds_QuestionTopic ">
<!ATTLIST ds_QuestionTopicTitle         %global-atts; class CDATA "- topic/title ds_QuestionTopic/ds_QuestionTopicTitle ">
<!ATTLIST ds_QuestionTopicBody          %global-atts; class CDATA "- topic/body  ds_QuestionTopic/ds_QuestionTopicBody ">

<!-- End of ds_QuestionTopic module -->