--7.
--Use COUNT to show the number of teachers and the number of mobile phones.
SELECT
  COUNT(teacher.name) AS teacher,
  COUNT(teacher.mobile) AS mobile
FROM teacher;