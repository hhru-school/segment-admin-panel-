package ru.hhschool.segment.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import ru.hhschool.segment.dao.abstracts.LayerDao;
import ru.hhschool.segment.dao.abstracts.RoleDao;
import ru.hhschool.segment.dao.abstracts.SegmentDao;
import ru.hhschool.segment.dao.abstracts.EntrypointDao;
import ru.hhschool.segment.dao.abstracts.ScreenQuestionLinkDao;
import ru.hhschool.segment.dao.abstracts.QuestionRequiredLinkDao;
import ru.hhschool.segment.dao.abstracts.SegmentApplicationScreenLinkDao;
import ru.hhschool.segment.dao.abstracts.AnswerDao;
import ru.hhschool.segment.dao.abstracts.QuestionDao;
import ru.hhschool.segment.dao.abstracts.SegmentStateLinkDao;
import ru.hhschool.segment.dao.impl.LayerDaoImpl;
import ru.hhschool.segment.dao.impl.SegmentDaoImpl;
import ru.hhschool.segment.dao.impl.QuestionDaoImpl;
import ru.hhschool.segment.dao.impl.EntrypointDaoImpl;
import ru.hhschool.segment.dao.impl.QuestionRequiredLinkDaoImpl;
import ru.hhschool.segment.dao.impl.AnswerDaoImpl;
import ru.hhschool.segment.dao.impl.ScreenQuestionLinkDaoImpl;
import ru.hhschool.segment.dao.impl.SegmentApplicationScreenLinkDaoImpl;
import ru.hhschool.segment.dao.impl.SegmentStateLinkDaoImpl;
import ru.hhschool.segment.service.AnswerService;
import ru.hhschool.segment.service.FilterService;
import ru.hhschool.segment.service.LayerService;
import ru.hhschool.segment.service.SegmentService;

@Configuration
public class SegmentConfig {
  @Bean
  public LayerService getLayerService(LayerDao layerDao) {
    return new LayerService(layerDao);
  }

  @Bean
  public AnswerService getAnswerService(AnswerDao answerDao, QuestionDao questionDao) {
    return new AnswerService(answerDao, questionDao);
  }

  @Bean
  public FilterService getFilterService() {
    return new FilterService();
  }

  @Bean
  public LayerDao getLayerDao() {
    return new LayerDaoImpl();
  }

  @Bean
  public SegmentDao getSegmentDao() {
    return new SegmentDaoImpl();
  }

  @Bean
  public QuestionDao getQuestionDao() {
    return new QuestionDaoImpl();
  }

  @Bean
  public EntrypointDao getEntrypointDao() {
    return new EntrypointDaoImpl();
  }

  @Bean
  public AnswerDao getAnswerDao() {
    return new AnswerDaoImpl();
  }

  @Bean
  public QuestionRequiredLinkDao getQuestionRequiredLinkDao() {
    return new QuestionRequiredLinkDaoImpl();
  }

  @Bean
  public ScreenQuestionLinkDao getScreenQuestionLinkDao() {
    return new ScreenQuestionLinkDaoImpl();
  }

  @Bean
  public SegmentApplicationScreenLinkDao getSegmentApplicationScreenLinkDao() {
    return new SegmentApplicationScreenLinkDaoImpl();
  }

  @Bean
  public SegmentStateLinkDao getSegmentStateLinkDao() {
    return new SegmentStateLinkDaoImpl();
  }

  @Bean
  public SegmentService getSegmentService(LayerDao layerDao,
                                          SegmentStateLinkDao segmentStateLinkDao,
                                          ScreenQuestionLinkDao screenQuestionLinkDao,
                                          SegmentApplicationScreenLinkDao segmentApplicationScreenLinkDao,
                                          QuestionRequiredLinkDao questionRequiredLinkDao,
                                          RoleDao roleDao) {
    return new SegmentService(layerDao, segmentStateLinkDao, screenQuestionLinkDao, segmentApplicationScreenLinkDao, questionRequiredLinkDao, roleDao);
  }
}
