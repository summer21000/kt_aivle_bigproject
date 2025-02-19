# Amazon Corretto 21을 기반 이미지로 사용
FROM amazoncorretto:17

# 빌드된 JAR 파일을 컨테이너로 복사
COPY build/libs/project-0.0.1-SNAPSHOT.jar app.jar

# 포트 노출
EXPOSE 8080

# 'dev' 프로파일을 활성화하여 애플리케이션 실행
ENTRYPOINT ["java", "-Dspring.profiles.active=dev,dockerdb", "-jar", "/app.jar"]
