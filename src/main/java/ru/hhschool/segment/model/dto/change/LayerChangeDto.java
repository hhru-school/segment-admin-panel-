package ru.hhschool.segment.model.dto.change;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;

public class LayerChangeDto {
  private Long id;
  private Long parentLayerId;
  private String title;
  private String description;
  private boolean stable;
  private boolean archive;
  private boolean deleted;
  private LocalDateTime createTime;

  private Map<String, List<EntrypointChangeDto>> entrypointMap;
  private Map<String, List<SegmentChangeDto>> segmentMap;
  private Map<String, List<QuestionChangeDto>> questionMap;
  private Map<String, List<AnswerChangeDto>> answerMap;
  private Map<String, List<QuestionActivatorLinkChangeDto>> questionActivatorLinkMap;

  public LayerChangeDto() {
  }

  public LayerChangeDto(
      Long id,
      Long parentLayerId,
      String title,
      String description,
      boolean stable,
      boolean archive,
      boolean deleted,
      LocalDateTime createTime
  ) {
    this.id = id;
    this.parentLayerId = parentLayerId;
    this.title = title;
    this.description = description;
    this.stable = stable;
    this.archive = archive;
    this.deleted = deleted;
    this.createTime = createTime;

    entrypointMap = Map.of();
    segmentMap = Map.of();
    questionMap = Map.of();
    answerMap = Map.of();
    questionActivatorLinkMap = Map.of();
  }

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public Long getParentLayerId() {
    return parentLayerId;
  }

  public void setParentLayerId(Long parentLayerId) {
    this.parentLayerId = parentLayerId;
  }

  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public boolean isStable() {
    return stable;
  }

  public void setStable(boolean stable) {
    this.stable = stable;
  }

  public boolean isArchive() {
    return archive;
  }

  public void setArchive(boolean archive) {
    this.archive = archive;
  }

  public boolean isDeleted() {
    return deleted;
  }

  public void setDeleted(boolean deleted) {
    this.deleted = deleted;
  }

  public LocalDateTime getCreateTime() {
    return createTime;
  }

  public void setCreateTime(LocalDateTime createTime) {
    this.createTime = createTime;
  }

  public Map<String, List<EntrypointChangeDto>> getEntrypointMap() {
    return entrypointMap;
  }

  public void setEntrypointMap(Map<String, List<EntrypointChangeDto>> entrypointMap) {
    this.entrypointMap = entrypointMap;
  }

  public Map<String, List<SegmentChangeDto>> getSegmentMap() {
    return segmentMap;
  }

  public void setSegmentMap(Map<String, List<SegmentChangeDto>> segmentMap) {
    this.segmentMap = segmentMap;
  }

  public Map<String, List<QuestionChangeDto>> getQuestionMap() {
    return questionMap;
  }

  public void setQuestionMap(Map<String, List<QuestionChangeDto>> questionMap) {
    this.questionMap = questionMap;
  }

  public Map<String, List<AnswerChangeDto>> getAnswerMap() {
    return answerMap;
  }

  public void setAnswerMap(Map<String, List<AnswerChangeDto>> answerMap) {
    this.answerMap = answerMap;
  }

  public Map<String, List<QuestionActivatorLinkChangeDto>> getQuestionActivatorLinkMap() {
    return questionActivatorLinkMap;
  }

  public void setQuestionActivatorLinkMap(Map<String, List<QuestionActivatorLinkChangeDto>> questionActivatorLinkMap) {
    this.questionActivatorLinkMap = questionActivatorLinkMap;
  }
}