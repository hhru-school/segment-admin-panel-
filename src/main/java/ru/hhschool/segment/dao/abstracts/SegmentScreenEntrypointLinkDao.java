package ru.hhschool.segment.dao.abstracts;

import ru.hhschool.segment.model.entity.SegmentScreenEntrypointLink;

import java.util.List;

public interface SegmentScreenEntrypointLinkDao extends ReadWriteDao<SegmentScreenEntrypointLink, Long> {
  List<SegmentScreenEntrypointLink> findAll(Long layerId, Long segmentId);
  List<SegmentScreenEntrypointLink> findAll(Long layerId, Long segmentId, Long entrypointId);
}
